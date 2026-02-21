document.addEventListener("DOMContentLoaded", function () {

    // Set current year
    document.getElementById("year").textContent = new Date().getFullYear();

    const form = document.getElementById("contactForm");
    const thankYou = document.getElementById("thankYouMessage");

    form.addEventListener("submit", async function (e) {
        e.preventDefault();

        const formData = new FormData(form);

        try {
            const response = await fetch(form.action, {
                method: form.method,
                body: formData
            });

            if (response.ok) {
                thankYou.style.display = "block";
                form.reset();
            } else {
                alert("Something went wrong. Try again.");
            }

        } catch (error) {
            alert("Error: " + error.message);
        }
    });

});