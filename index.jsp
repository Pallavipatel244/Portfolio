<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Portfolio</title>
  <link rel="stylesheet" href="assets/style.css" />
  <script defer src="assets/script.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body>
  <!-- ===== HEADER ===== -->
  <header class="site-header">
    <nav class="container nav">
      <a class="brand" href="#about">Pallavi Patidar<span>.</span></a>
      <ul class="menu">
        <li><a href="#about">About</a></li>
        <li><a href="#skills">Skills</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
  </header>

  <main class="container">
    <!-- ===== ABOUT SECTION ===== -->
    <section id="about" class="hero">
      <div class="hero-text">
        <h1>Hi, I'm <span class="accent">Pallavi Patidar</span></h1>
        <p class="subtitle">Java Developer • Web Enthusiast</p>
        <p class="muted">
          Hello! I'm Pallavi Patidar, a passionate Java Developer with a strong foundation in OOP, data structures, and software design principles. 
          I love building scalable and efficient applications using Java & web technologies. Always exploring new frameworks and tools to grow!
        </p>
        <div class="cta">
          <a class="btn primary" href="#projects">View Projects</a>
          <a class="btn" href="assets/PallaviPatidarPlacement.pdf" download>
            <i class="fa-solid fa-download"></i> Download Resume
          </a>
        </div>
      </div>
      <div class="hero-media">
        <img src="assets/images/PortImage.png" alt="My Profile Photo" class="profile-pic" />
      </div>
    </section>

    <!-- ===== SKILLS SECTION ===== -->
    <section id="skills" class="section">
      <h2 class="section-title">My Skills</h2>
      <div class="skills-grid">
        <div class="skill-card"><i class="fa-solid fa-code"></i> C</div>
        <div class="skill-card"><i class="fa-solid fa-code"></i> C++</div>
        <div class="skill-card"><i class="fa-brands fa-java"></i> Java</div>
        <div class="skill-card"><i class="fa-solid fa-code"></i> JSP</div>
        <div class="skill-card"><i class="fa-solid fa-code"></i> Servlets</div>
        <div class="skill-card"><i class="fa-solid fa-database"></i> JDBC</div>
        <div class="skill-card"><i class="fa-solid fa-database"></i> SQL</div>
        <div class="skill-card"><i class="fa-brands fa-html5"></i> HTML</div>
        <div class="skill-card"><i class="fa-brands fa-css3-alt"></i> CSS</div>
        <div class="skill-card"><i class="fa-brands fa-js"></i> JavaScript</div>
      </div>
    </section>

    <!-- ===== PROJECTS SECTION ===== -->
    <section id="projects" class="section">
      <h2 class="section-title">🚀 My Projects</h2>
      <div class="projects-grid">
        <div class="project-card">
          <h3>💻 Portfolio Website</h3>
          <p>Personal portfolio site with modern responsive design.</p>
          <div class="project-links">
            <a href="#" class="btn small">View Live</a>
            <a href="#" class="btn small">View Code</a>
          </div>
        </div>

        <div class="project-card">
          <h3>🍴 Revolutionary Restaurant Inventory System</h3>
          <p>Smart inventory & order management system using Java, JSP, Servlet and JDBC.</p>
          <div class="project-links">
            <a href="#" class="btn small">View Live</a>
            <a href="#" class="btn small">View Code</a>
          </div>
        </div>

        <div class="project-card">
          <h3>🎓 Student Registration & Login Form</h3>
          <p>Login & registration system built with JSP/Servlets and JDBC.</p>
          <div class="project-links">
            <a href="#" class="btn small">View Live</a>
            <a href="#" class="btn small">View Code</a>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== CONTACT SECTION ===== -->
    <section id="contact" class="section">
      <h2 class="section-title">Contact Me</h2>
      <p class="muted"><strong>I'd love to connect with you! Feel free to reach out via:</strong></p>

      <!-- Social Links -->
      <div class="socials">
        <a href="mailto:ptanu5516@gmail.com"><i class="fa-solid fa-envelope"></i> Email</a>
        <a href="https://github.com/Pallavipatel244" target="_blank"><i class="fa-brands fa-github"></i> GitHub</a>
        <a href="https://www.linkedin.com/in/pallavi-patidar-922449256" target="_blank"><i class="fa-brands fa-linkedin"></i> LinkedIn</a>
        <a href="https://x.com/Patidarpallavi3" target="_blank"><i class="fa-brands fa-twitter"></i> Twitter</a>
      </div>

      <!-- Contact Form (Web3Forms Integration) -->
      <form id="contactForm" action="https://api.web3forms.com/submit" method="POST" class="contact-form">
        <!-- Web3Forms Access Key -->
        <input type="hidden" name="access_key" value="57075822-c9cb-407d-bb03-6e9c3434a922">

        <!-- Email subject -->
        <input type="hidden" name="subject" value="New Contact Form Submission">

        

        <!-- User Inputs -->
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>

        <button type="submit" class="btn primary">Send Message</button>
      </form>

      <!-- Thank You Message -->
      <div id="thankYouMessage" style="display:none; text-align:center; margin-top:20px; font-weight:bold; color:green;">
        Thank you! Your message has been sent successfully. 😊
      </div>
    </section>
  </main>

  <!-- ===== FOOTER ===== -->
  <footer class="site-footer">
    <div class="container">
      <p>© <span id="year"></span> Pallavi Patidar — Built with JSP, HTML, CSS, JS</p>
    </div>
  </footer>

  <!-- JavaScript for Contact Form (Web3Forms + Thank You Message) -->
  <script>
  document.getElementById('contactForm').addEventListener('submit', async function(e){
      e.preventDefault(); // prevent default form submission

      const form = e.target;
      const formData = new FormData(form);

      try {
          const response = await fetch(form.action, {
              method: form.method,
              body: formData,
          });

          if(response.ok) {
              // Show thank-you message
              document.getElementById('thankYouMessage').style.display = 'block';
              // Clear form
              form.reset();
          } else {
              alert('Oops! Something went wrong, please try again.');
          }
      } catch (error) {
          alert('Error sending message: ' + error.message);
      }
  });
  </script>
</body>
</html>
