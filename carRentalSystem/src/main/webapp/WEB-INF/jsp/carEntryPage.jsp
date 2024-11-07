<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Entry Page</title>
    <style>
        body {
            font-family: Cambria, serif;
            background-color: #4267B2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        h1 {
            color: #000;
            margin-bottom: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            text-decoration: underline;
        }

        label {
            color: #000;
            font-weight: bold;
            font-size: 14px;
            display: block;
            margin-top: 10px;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            background-color: rgba(240, 240, 240, 0.7);
            box-sizing: border-box;
            font-size: 14px;
        }

        button {
            padding: 10px 20px;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            width: 48%;
            margin: 5px 1%;
        }

        button[type="submit"] {
            background-color: #28a745; /* Green for submit */
        }

        button[type="reset"] {
            background-color: #dc3545; /* Red for reset */
        }

        button:hover {
            opacity: 0.9;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Car Entry Page</h1>
        <form action="/carAdd" method="post">
            <label for="carNumber">Enter Car Registration Number:</label>
            <input type="text" id="carNumber" name="carNumber" placeholder="Enter Registration Number" class="input-box" />

            <label for="carName">Enter Car Name:</label>
            <input type="text" id="carName" name="carName" placeholder="Enter Car Name" class="input-box" />

            <label for="carColor">Enter Car Color:</label>
            <input type="text" id="carColor" name="carColor" placeholder="Enter Car Color" class="input-box" />

            <label for="manufacturer">Enter Manufacturer Name:</label>
            <input type="text" id="manufacturer" name="manufacturer" placeholder="Enter Manufacturer Name" class="input-box" />

            <label for="yearOfMfg">Enter Year of Manufacture:</label>
            <input type="number" id="yearOfMfg" name="yearOfMfg" placeholder="Enter Year" min="1886" max="2024" class="input-box" />

            <label for="rentRate">Enter Rent Rate per Hour:</label>
            <input type="number" id="rentRate" name="rentRate" placeholder="Enter Rent Rate" step="0.01" min="0" class="input-box" />

            <label for="variantId">Select Variant ID:</label>
            <input type="text" id="variantId" name="variantId" placeholder="Enter Variant ID" class="input-box" />

            <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
