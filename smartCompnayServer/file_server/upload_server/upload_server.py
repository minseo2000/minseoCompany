from flask import Flask, request, jsonify, send_file
from flask_cors import CORS
from werkzeug.utils import secure_filename
import os

app = Flask(__name__)
CORS(app)
# 파일이 저장될 경로 설정
UPLOAD_FOLDER = '../../../../../../../work/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


@app.route('/upload', methods=['POST'])
def upload_file():
    file = request.files['file']
    start = request.form.get('start', type=int)
    file_name = secure_filename(file.filename)

    # 업로드된 파일을 저장할 경로 설정
    target_path = os.path.join('uploads', file_name)

    # 파일이 처음 업로드되는 경우 새 파일을 생성
    if start == 0:
        with open(target_path, 'wb') as f:
            f.write(file.read())
    else:
        # 기존 파일에 청크 추가
        with open(target_path, 'ab') as f:
            f.write(file.read())

    return {'status': 'success', 'message': f'Chunk starting at {start} uploaded'}

@app.route('/fileList', methods=['GET'])
def getFileLists():
    fileList = os.listdir('../../../../../../../work/')  # 현재 폴더의 파일 목록을 가져옵니다.
    return jsonify(fileList)


@app.route('/download', methods=['GET'])
def downloadFile():
    fileDir = request.args.get('filepath')  # 쿼리 파라미터에서 'filepath' 값을 가져옵니다.
    fileDir = '../../../../../../../work/'+fileDir
    if os.path.isfile(fileDir):  # 파일 경로가 유효한지 확인합니다.
        return send_file(fileDir, as_attachment=True)
    else:
        return {"error": "유효하지 않은 파일 경로입니다."}, 400

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=51000)
else:
    app.run(debug=True, host='0.0.0.0', port=51000)
