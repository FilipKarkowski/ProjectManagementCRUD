
document.addEventListener("turbo:load", () => {
    const newProjectButton = document.getElementById("new-project-button");
    const modalFrame = document.getElementById("modal");

    if (newProjectButton) {
        newProjectButton.addEventListener("click", (event) => {
            event.preventDefault();
            modalFrame.setAttribute("src", event.target.href);
        });
    }
});
