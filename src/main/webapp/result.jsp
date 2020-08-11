<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Fjalla+One&family=Lora&display=swap" rel="stylesheet">
    <link href="http://dazesace.com/Bodoni%2072.ttc" rel="stylesheet">
    <link href="http://dazesace.com/Futura%20Condensed%20Medium.otf" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://printjs-4de6.kxcdn.com/print.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Briefer - Zusammenfassung</title>
</head>
<body>
<header>
    <a href="/" class="mt-4 ml-4 text-5xl fontSans">briefer.</a>
</header>
<div class="flex">
    <div class="w-1/4">

    </div>
    <div class="w-1/2">
        <p class="fontSerif text-4xl ">Zusammenfassung</p>
    </div>
    <div class="w-1/4">

    </div>
</div>
<div class="flex">
    <div class="w-1/4 relative">
        <div class="absolute w-full bottom-0 mb-48">
            <div class="flex justify-center">
                <a href="/Briefing" class="fontSerif text-2xl underline">zurück</a>
            </div>
        </div>
    </div>
    <div class="w-1/2 border-r border-l border-black" style="height: 87vh">
        <div class="mx-4 mt-4 overflow-y-auto" id="content" style="height: 82vh">
                <p class="fontSans text-4xl"><%= request.getParameter("1CompName") %> Briefing</p>
                <p class="fontSans text-2xl mt-2">Kontakt:</p>
                <p class="fontSerif"><%= request.getParameter("1Contact") %></p>
                <p class="fontSerif"><%= request.getParameter("1Mail") %></p>
                <p class="fontSerif"><%= request.getParameter("1Telephone") %></p>
                <p class="fontSerif"><%= request.getParameter("1WebSite") %></p>
                <p class="fontSerif text-3xl my-3">Aufgabenstellung</p>
                <p class="fontSans text-lg"><%= request.getParameter("3Task") %></p>
                <p class="fontSerif text-3xl my-3">Produkt</p>
                <p class="fontSans text-lg"><%= request.getParameter("4Product") %></p>
                <p class="fontSerif text-3xl my-3">Ziele</p>
                <p class="fontSans text-lg"><%= request.getParameter("5Goals") %></p>
                <p class="fontSerif text-3xl my-3">Zeit</p>
                <p class="fontSans text-lg"><%= request.getParameter("6Time") %></p>
                <p class="fontSerif text-3xl my-3">Budget</p>
                <p class="fontSans text-lg"><%= request.getParameter("7Budget") %></p>
                <p class="fontSerif text-3xl my-3">Terminvorschläge</p>
                <p class="fontSans text-lg"><%= request.getParameter("9Termin1") %></p>
                <p class="fontSans text-lg"><%= request.getParameter("9Termin2") %></p>
                <p class="fontSans text-lg"><%= request.getParameter("9Termin3") %></p>
        </div>
    </div>
    <div class="w-1/4 relative ">
        <div class="absolute w-full bottom-0 mb-64">
            <div class="w-1/6 mx-auto">
                <img src="download.svg" class="cursor-pointer" onclick="print()" alt="download img">
            </div>
            <p class="fontSerif text-2xl text-center cursor-pointer" onclick="print()">Download</p>
        </div>
    </div>
</div>
<footer class="fixed bottom-0 w-full mb-10">
    <div class="flex justify-between mt-24">
        <p class="fontSans text-2xl text-gray-500 ml-4">Zur Agentur</p>
        <p class="fontSans text-2xl text-gray-500 mr-4">Impressum</p>
    </div>
</footer>
<script src="https://printjs-4de6.kxcdn.com/print.min.js"></script>
<script>
    function print(){
        printJS({
            printable: 'content',
            type: 'html',
            css: [
                'https://fonts.googleapis.com/css2?family=Fjalla+One&family=Lora&display=swap',
                'style.css',
                'https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css'
            ],
            scanStyles: false
        })
    }
</script>
</body>
</html>
