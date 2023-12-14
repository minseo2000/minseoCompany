from flask import Flask, request, jsonify
from flask_cors import CORS
from werkzeug.utils import secure_filename
import os

app = Flask(__name__)
CORS(app)
# 파일이 저장될 경로 설정
UPLOAD_FOLDER = '../../../../work/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/upload', methods=['POST'])
def upload_file():
    # 파일이 요청에 있는지 확인
    if 'file' not in request.files:
        return jsonify({'message': '파일이 요청에 없습니다.'}), 400

    file = request.files['file']

    # 파일 이름이 비어있는지 확인
    if file.filename == '':
        return jsonify({'message': '파일 이름이 없습니다.'}), 400

    if file:
        # 안전한 파일 이름을 생성
        filename = secure_filename(file.filename)
        # 파일 저장
        file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        return jsonify({'message': '파일 업로드 성공', 'filename': filename}), 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=51000)
