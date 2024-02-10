<!DOCTYPE html>
<html>
<head>
    <title>Valentine's Question</title>
    <style>
        .button {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.2s; /* Smooth transition for resizing */
        }
        .yes-button {
            background-color: lightgreen;
        }
        .no-button {
            background-color: salmon;
        }
    </style>
</head>
<body>
    <h2>Will You Be My Valentine?</h2>
    <button id="yesBtn" class="button yes-button" onclick="userResponse('yes')">Yes</button>
    <button id="noBtn" class="button no-button" onclick="userResponse('no')">No</button>
    <p id="response"></p>

    <script>
        let isNoClicked = false; // Flag to track if "No" has been clicked

        function userResponse(answer) {
            var yesBtn = document.getElementById('yesBtn');
            var noBtn = document.getElementById('noBtn');
            var responseText = document.getElementById('response');

            if(answer === 'yes') {
                responseText.innerHTML = "😍 You said YES! Happy Valentine's Day! 😍";
            } else {
                if (!isNoClicked) {
                    // First time "No" is clicked
                    responseText.innerHTML = "😢 Are you sure?! 😢";
                    yesBtn.style.transform = "scale(1.25)"; // Makes the yes button 25% larger
                    noBtn.innerHTML = "Are you sure?!"; // Changes the text of the no button
                    isNoClicked = true; // Mark that "No" has been clicked once
                } else {
                    // "No" is clicked for the second time
                    yesBtn.style.transform = "scale(1.375)"; // Increases the yes button size by an additional 10%
                    noBtn.innerHTML = "Is that your final answer pookie?"; // Changes the text of the no button again
                }
            }
        }
    </script>
</body>
</html>
