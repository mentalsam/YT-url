    // Start of Selection
    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>YouTube URL 変更ツール</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                margin: 20px;
            }
            h1 {
                font-size: 2.5em;
                color: #333;
            }
            input[type="text"] {
                font-size: 1.5em;
                padding: 10px;
                width: 80%;
                margin: 10px 0;
            }
            button {
                font-size: 1.5em;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
            }
            button:hover {
                background-color: #45a049;
            }
            p {
                font-size: 1.5em;
                color: #555;
            }
        </style>
    </head>
    <body>
        <h1>YouTube URL 変更ツール</h1>
        <input type="text" id="youtubeUrl" placeholder="YouTubeのURLを入力してください">
        <button id="changeUrlButton">変更する</button>
        <p id="result"></p>
    
        <script>
            document.getElementById('changeUrlButton').addEventListener('click', function() {
                var url = document.getElementById('youtubeUrl').value;
                var newUrl = url.replace('www.youtube.com/shorts/', 'www.youtube.com/watch?v=');
                document.getElementById('result').innerText = '変更後のURL: ' + newUrl;
                window.open(newUrl, '_blank');
            });
        </script>
    </body>
    </html>
