const fashionDrops = [
    {
        title: "Nike Air Max 1 'Photon Dust'",
        desc: "The Nike Air Max 1 'Photon Dust' features a premium combination of suede and mesh in neutral tones. This iconic silhouette delivers legendary comfort with visible Air cushioning. Releasing exclusively on SNKRS app and selected retailers on December 10th. Don't miss this clean colorway perfect for any sneaker rotation.",
        img: "assets/images/photon_dust.webp"
    },
    {
        title: "Supreme x Scarface FW Collection",
        desc: "Supreme drops their highly anticipated Fall/Winter collaboration with Scarface. The collection features bold graphics from the iconic film across tees, hoodies, and accessories. Releasing Thursday, October 5th at 11am CET exclusively on supreme.com. This collaboration celebrates one of cinema's most legendary characters with Supreme's signature streetwear aesthetic.",
        img: "assets/images/supreme_scarface.avif"
    },
    {
        title: "Air Jordan 1 Retro High OG",
        desc: "The Air Jordan 1 Retro High OG returns with its iconic silhouette and timeless design. Featuring premium leather construction and the classic colorway that started it all. This legendary sneaker continues to dominate both on and off the court. A must-have for any serious sneaker collection. Available at select Nike retailers and SNKRS app.",
        img: "assets/images/carroussel2.jpg"
    },
    {
        title: "Carhartt WIP Jacket Hunter Green",
        desc: "Carhartt Work In Progress presents their iconic Detroit Jacket in Hunter Green. Constructed from heavyweight cotton canvas with a blanket lining for warmth. Features multiple utility pockets and the signature Carhartt build quality. Coming soon to selected boutiques worldwide. A perfect blend of workwear heritage and contemporary style.",
        img: "assets/images/carhartt_jacket.jpg"
    },
    {
        title: "New Balance 550 'White Green'",
        desc: "The New Balance 550 continues its comeback with this fresh 'White Green' colorway. Originally a basketball shoe from the '80s, the 550 has been revived with premium leather construction. The retro design features classic New Balance branding and a vintage aesthetic that's perfect for everyday wear. Releasing at New Balance retailers and newbalance.com.",
        img: "assets/images/New-Balance-550-White-Green-.jpg"
    },
    {
        title: "Louis Vuitton Spring/Summer 2025",
        desc: "Louis Vuitton presents its spectacular Spring/Summer 2025 collection at Paris Fashion Week. The French luxury house unveils bold pieces blending tradition with innovation. Between artisanal craftsmanship and avant-garde design, this collection embodies the excellence of haute couture. A must-see event for fashion and luxury enthusiasts.",
        img: "assets/images/carroussel3.jpg"
    }
];

const dropWatchApp = {
    data() {
        return {
            mainHeading: 'Latest Fashion & Sneaker Drops',
            fashionDrops,
            isFlipped: false,
            index: 0
        }
    },
    methods: {
        move(change) {
            if (this.fashionDrops[this.index + change]) {
                this.index += change;
                this.isFlipped = false;
            }
        }
    }
};

function initDropWatch() {
    Vue.createApp(dropWatchApp).mount("#app");
    const yearEl = document.getElementById('year');
    if (yearEl) {
        yearEl.textContent = new Date().getFullYear();
    }
    const key = 'dw-theme';
    const body = document.body;
    const btn = document.getElementById('themeToggle');
    const current = localStorage.getItem(key);
    if (current === 'dark') {
        body.classList.add('theme-dark');
    }
    function updateLabel() {
        if (btn) {
            btn.textContent = body.classList.contains('theme-dark') ? '🌞 Light theme' : '🌗 Dark theme';
        }
    }
    updateLabel();
    if (btn) {
        btn.addEventListener('click', function() {
            body.classList.toggle('theme-dark');
            localStorage.setItem(key, body.classList.contains('theme-dark') ? 'dark' : 'light');
            updateLabel();
        });
    }
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initDropWatch);
} else {
    initDropWatch();
}
