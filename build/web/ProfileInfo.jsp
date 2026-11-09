<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f5;
            margin: 40px;
        }
        
body::before {
    content: "";
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('datc3.jpg'); 
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    z-index: -1; 
    
    
    animation: bgFadeIn 1.2s ease-in-out forwards;
}


@keyframes bgFadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

    .logo {
    display: block;
    max-width: 500px;
    height: auto;
    margin: 0 auto 5px auto;
    position: relative;
    top: -3px;
    background: rgba(255, 255, 255, 0.85); 
    padding: 10px 20px;                     
    border-radius: 10px;                    
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    animation: fadeInDown 0.8s ease-out forwards;
}

/* Animasi Logo Turun dari Atas */
@keyframes fadeInDown {
    from {
        opacity: 0;
        transform: translateY(-30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);    
    }
}

        .card {
            width: 500px;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin: 20px auto 30px auto;
            
            animation: fadeInUp 0.8s ease-out forwards;
        }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
.memo-wrapper {
    position: fixed;
    top: 40px;
    left: 30px;
    display: flex;
    flex-direction: column;
    gap: 15px;
    width: 250px;
    z-index: 10;
}

.memo-box {
    background: rgba(255, 255, 255, 0.85);
    backdrop-filter: blur(5px);
    padding: 16px 20px;
    border-radius: 10px;
    border-left: 5px solid #1d4ed8;
    border-top: 1px solid rgba(255, 255, 255, 0.6);
    border-right: 1px solid rgba(255, 255, 255, 0.6);
    border-bottom: 1px solid rgba(255, 255, 255, 0.6);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
    font-size: 13px;
    color: #1a252f;
    line-height: 1.5;
    will-change: transform, opacity;
    animation: memoSlideIn 0.8s ease-out forwards;
}

.memo-box.welcome-memo {
    border-left: 5px solid #16a34a;
}

@keyframes memoSlideIn {
    from {
        opacity: 0;
        transform: translateX(-30px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

.memo-box strong {
    display: block;
    margin-bottom: 6px;
    color: #1d4ed8;
    font-size: 14px;
}

.memo-box.welcome-memo strong {
    color: #16a34a;
}

@media (max-width: 1024px) {
    .memo-wrapper {
        display: none;
    }
}
        
        h2 {
            text-align: center;
            color: #0056b3;
            border-bottom: 2px solid #0056b3;
            padding-bottom: 10px;
            font-style: italic;
            
            margin-top: -1px;
           
        }
        .info-group {
            margin-bottom: 20px;
            
        }
        .label {
            font-weight: bold;
            font-size: 18px;
            color: #555;
            display: inline-block;
            margin-top: 1px;
            margin-bottom: 10px;
             
        }
      /* 1. Kemaskini .value biasa supaya margin-left jadi 0 */
        .value {
            color: #222;
            font-size: 17px;
            font-style: italic;
            margin-top: 1px;
            margin-left: 5px !important;   /* TUKAR KEPADA 0 supaya selari dengan Short Intro */
            margin-bottom: 18px;
            word-wrap: break-word;
        }

        /* 2. Pastikan Short Intro pun guna margin-left: 0 */
        .value.text-justify {
            text-align: left !important;
            color: #222;
            margin-top: 2px;
            font-size: 17px;
            margin-left: 5px !important;   /* Rapat ke tepi sebelah kiri */
            font-style: italic;
            line-height: 1.6;
        }
        
        /* --- STYLE UNTUK BUTANG BACK TO FORM --- */
.back-btn {
    display: block;
    width: 100%;
    text-align: center;
    background-color: #1d4ed8; 
    color: white;
    padding: 12px 0;
    text-decoration: none;
    border-radius: 4px;
    margin-top: 20px;
    font-size: 15px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.back-btn:hover {
    background-color: #1e40af;
}

/* --- STYLE UNTUK FLOATING SUPPORT WIDGETS (FAQ & WHATSAPP) --- */
.support-widgets {
    position: fixed;
    bottom: 15px;
    right: 15px;
    display: flex;
    flex-direction: column;
    gap: 12px;
    z-index: 99;
}

.support-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    color: white;
    text-decoration: none;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    position: relative;
    will-change: transform;
    backface-visibility: hidden;
    animation: smoothBounce 3s infinite cubic-bezier(0.45, 0.05, 0.55, 0.95);
    transition: box-shadow 0.3s ease, background-color 0.3s ease;
}

.support-btn.faq {
    background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%);
    backdrop-filter: blur(8px);
    border: 1px solid rgba(255, 255, 255, 0.3);
    box-shadow: 0 8px 20px rgba(29, 78, 216, 0.4), 
                inset 0 1px 1px rgba(255, 255, 255, 0.6);
}

.support-btn.whatsapp {
    background-color: #25D366;
    animation-delay: 1.5s;
}

.support-btn:hover {
    animation-play-state: paused;
    transform: scale(1.12) translateY(-2px);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.45);
}

.support-btn i {
    font-size: 30px;
    transition: transform 0.3s ease;
}

.support-btn:hover i {
    transform: scale(1.08);
}

.support-btn .tooltip {
    position: absolute;
    right: 75px;
    top: 50%;
    background: rgba(0, 0, 0, 0.85);
    color: white;
    padding: 6px 12px;
    border-radius: 6px;
    font-size: 12px;
    white-space: nowrap;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease, transform 0.3s ease;
    transform: translateX(10px);
}

.support-btn:hover .tooltip {
    opacity: 1;
    transform: translateX(0);
}

@keyframes smoothBounce {
    0%, 100% {
        transform: translateY(0);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    }
    50% {
        transform: translateY(-8px);
        box-shadow: 0 12px 22px rgba(0, 0, 0, 0.2);
    }
}
        
        .back-btn {
            display: block;
            width: 100%;
            text-align: center;
            background-color: #6c757d;
            color: white;
            padding: 10px 0;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 25px;
        }
        
        .back-btn:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

  
    <div class="memo-wrapper">
        <div class="memo-box">
            <strong>📌 Reminder:</strong>
            For Faculty of Computer & Mathematical Sciences students only.
        </div>
        <div class="memo-box welcome-memo">
            <strong>🎓 Welcome to UiTM Shah Alam!</strong>
            Warmest congratulations to all FSKM students on advancing your education. May your hard work and dedication lead to a brighter future!
        </div>
    </div>

    <img src="MUHAMMAD FAIZAL.png" alt="UiTM Logo" class="logo">
    
<div class="card">
    <h2>Student Profile Details</h2>

    <div class="info-group">
        <span class="label">Name:</span>
        <div class="value"><%= request.getAttribute("userName") %></div>
    </div>

    <div class="info-group">
        <span class="label">Student ID:</span>
        <div class="value"><%= request.getAttribute("userStudentId") %></div>
    </div>

    <div class="info-group">
        <span class="label">Programme:</span>
        <div class="value"><%= request.getAttribute("userProgramme") %></div>
    </div>

    <div class="info-group">
        <span class="label">Email:</span>
        <div class="value"><%= request.getAttribute("userEmail") %></div>
    </div>

    <div class="info-group">
        <span class="label">Hobbies:</span>
        <div class="value"><%= request.getAttribute("userHobbies") %></div>
    </div>
    
    <div class="info-group">
    <span class="label">Short Self-Introduction:</span>
    <div class="value text-justify"><%= request.getAttribute("userIntro") %></div>
</div>
    <a href="index.html" class="back-btn">Back to Form</a>
</div>

    <div class="support-widgets">
        <!-- BUTANG FAQ KEMAS & STABIL -->
        <a href="javascript:void(0);" class="support-btn faq" onclick="showFaqAlert();">
            <i class="fa-solid fa-circle-question"></i>
            <span class="tooltip">Frequently Asked Questions</span>
        </a>
        
        <a href="https://wa.me/60105269562?text=Hi,%20I%20have%20a%20question%20to%20ask." target="_blank" class="support-btn whatsapp">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="tooltip">Ask on WhatsApp</span>
        </a>
    </div>

    <!-- SCRIPT POPUP ALERT FAQ -->
    <script>
        function showFaqAlert() {
            alert("Q: Do I need to fill in all the questions?\n\nA: Yes, you must complete and answer all questions.\n\n*If you have any other questions, please click the WhatsApp \"Live Agent\" button.");
        }
    </script>
</body>
</html>