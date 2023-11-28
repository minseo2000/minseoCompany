const express = require('express');
const multer = require('multer');
const path = require('path');
const app = express();
const fs = require('fs');
const port = 50012;
const crypto = require('crypto');
const readline = require('readline');
const rl = readline.createInterface({
    input : process.stdin,
    output : process.stdout
})

let uploadData = 0;

 async function main() {
    try {
        const Dom = await result();

        if (Dom.length >= 1) {
            const sha256 = (data) => {
                const hash = crypto.createHash('sha256');
                hash.update(data);
                return hash.digest('hex');
            };

            const upload = multer({
                limits: { fileSize: 10 * 1024 * 1024 * 1024 },
                storage: multer.diskStorage({
                    filename(req, file, done) {
                        const originalname = file.originalname;
                        const extname = path.extname(originalname);
                        const basename = path.basename(originalname, extname);

                        console.log('영화 제목 : ', basename);

                        const hashedFileName = sha256(basename); // 영화 제목을 해싱하여 암호화
                        console.log('암호화된 제목 : ', hashedFileName);

                        done(null, hashedFileName + extname);
                    },
                    destination(req, file, done) {
                        console.log('업로드 중');
                        done(null, path.join(__dirname, `${Dom}`));
                    },
                }),
            });

            const uploadMiddleware = upload.single('myFile');

            app.use((req, res, next) => {
                uploadMiddleware(req, res, (err) => {
                    if (err) {
                        return next(err);
                    }

                    // 파일이 업로드될 때마다 uploadedBytes를 증가
                    // if(req.file){
                    //     while(req.file.size != 0){
                    //     uploadData += req.file.size;
                    //     let progress = (uploadData / req.headers['content-length']) * 100;
                    //     console.log(`Upload Progress: ${progress.toFixed(2)}%`);
                    //     }
                    // }

                    // 업로드 진행 상황 출력


                    next();
                });
                req.on('data', (chunk) => {
                    uploadData += chunk.length;

                    // 업로드 진행 상황 출력 (자주 출력하려면 조절 필요)
                    const contentLength = req.headers['content-length'];
                    const progress = (uploadData/ contentLength) * 100;
                    console.log(`업로드 진행률: ${progress.toFixed(2)}%`);
                });
            });

            const publicPath = path.join(__dirname, 'views');
            app.use(express.static(publicPath));


            app.post('/upload', (req,res) => {
                res.status(200).send('upload');

            });

            app.listen(port, () => {
              console.log(`서버가 http://localhost:${port} 에서 실행 중입니다.`);
            });

        } else if (Dom === '') {
            console.log('디렉터리명을 입력하세요.');
        }
    } catch (error) {
        console.error('오류 발생:', error.message);
    }
}

function getDom(){
    return new Promise((resolve) => {
        rl.question('파일을 저장할 디렉터리를 입력하시오 : ', function(result){
            rl.close();
            resolve(result);
        });
    });
  }

 async function result(){
    const result = await getDom();
    return result;

 }


main();