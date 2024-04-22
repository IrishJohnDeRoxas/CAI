/**
* Template Name: Append
* Template URL: https://bootstrapmade.com/append-bootstrap-website-template/
* Updated: Mar 17 2024 with Bootstrap v5.3.3
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/

(function() {
  "use strict";

  /**
   * Preloader
   */
  const preloader = document.querySelector('#preloader');
  if (preloader) {
    window.addEventListener('load', () => {
      preloader.remove();
    });
  }

  /**
   * Scroll top button
   */
  let scrollTop = document.querySelector('.scroll-top');

  function toggleScrollTop() {
    if (scrollTop) {
      window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
    }
  }
  scrollTop.addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });

  window.addEventListener('load', toggleScrollTop);
  document.addEventListener('scroll', toggleScrollTop);

  /**
   * Apply .scrolled class to the body as the page is scrolled down
   */
  function toggleScrolled() {
    const selectBody = document.querySelector('body');
    const selectHeader = document.querySelector('#header');
    if (!selectHeader.classList.contains('scroll-up-sticky') && !selectHeader.classList.contains('sticky-top') && !selectHeader.classList.contains('fixed-top')) return;
    window.scrollY > 100 ? selectBody.classList.add('scrolled') : selectBody.classList.remove('scrolled');
  }

  document.addEventListener('scroll', toggleScrolled);
  window.addEventListener('load', toggleScrolled);

  /**
   * Scroll up sticky header to headers with .scroll-up-sticky class
   */
  let lastScrollTop = 0;
  window.addEventListener('scroll', function() {
    const selectHeader = document.querySelector('#header');
    if (!selectHeader.classList.contains('scroll-up-sticky')) return;

    let scrollTop = window.pageYOffset || document.documentElement.scrollTop;

    if (scrollTop > lastScrollTop && scrollTop > selectHeader.offsetHeight) {
      selectHeader.style.setProperty('position', 'sticky', 'important');
      selectHeader.style.top = `-${header.offsetHeight + 50}px`;
    } else if (scrollTop > selectHeader.offsetHeight) {
      selectHeader.style.setProperty('position', 'sticky', 'important');
      selectHeader.style.top = "0";
    } else {
      selectHeader.style.removeProperty('top');
      selectHeader.style.removeProperty('position');
    }
    lastScrollTop = scrollTop;
  });

  /**
   * Mobile nav toggle
   */
  const mobileNavToggleBtn = document.querySelector('.mobile-nav-toggle');

  function mobileNavToogle() {
    document.querySelector('body').classList.toggle('mobile-nav-active');
    mobileNavToggleBtn.classList.toggle('bi-list');
    mobileNavToggleBtn.classList.toggle('bi-x');
  }
  mobileNavToggleBtn.addEventListener('click', mobileNavToogle);

  /**
   * Hide mobile nav on same-page/hash links
   */
  document.querySelectorAll('#navmenu a').forEach(navmenu => {
    navmenu.addEventListener('click', () => {
      if (document.querySelector('.mobile-nav-active')) {
        mobileNavToogle();
      }
    });

  });

  /**
   * Toggle mobile nav dropdowns
   */
  document.querySelectorAll('.navmenu .has-dropdown i').forEach(navmenu => {
    navmenu.addEventListener('click', function(e) {
      if (document.querySelector('.mobile-nav-active')) {
        e.preventDefault();
        this.parentNode.classList.toggle('active');
        this.parentNode.nextElementSibling.classList.toggle('dropdown-active');
        e.stopImmediatePropagation();
      }
    });
  });

  /**
   * Correct scrolling position upon page load for URLs containing hash links.
   */
  window.addEventListener('load', function(e) {
    if (window.location.hash) {
      if (document.querySelector(window.location.hash)) {
        setTimeout(() => {
          let section = document.querySelector(window.location.hash);
          let scrollMarginTop = getComputedStyle(section).scrollMarginTop;
          window.scrollTo({
            top: section.offsetTop - parseInt(scrollMarginTop),
            behavior: 'smooth'
          });
        }, 100);
      }
    }
  });

  /**
   * Initiate glightbox
   */
  const glightbox = GLightbox({
    selector: '.glightbox'
  });

  /**
   * Initiate Pure Counter
   */
  new PureCounter();

  /**
   * Init isotope layout and filters
   */
  document.querySelectorAll('.isotope-layout').forEach(function(isotopeItem) {
    let layout = isotopeItem.getAttribute('data-layout') ?? 'masonry';
    let filter = isotopeItem.getAttribute('data-default-filter') ?? '*';
    let sort = isotopeItem.getAttribute('data-sort') ?? 'original-order';

    let initIsotope;
    imagesLoaded(isotopeItem.querySelector('.isotope-container'), function() {
      initIsotope = new Isotope(isotopeItem.querySelector('.isotope-container'), {
        itemSelector: '.isotope-item',
        layoutMode: layout,
        filter: filter,
        sortBy: sort
      });
    });

    isotopeItem.querySelectorAll('.isotope-filters li').forEach(function(filters) {
      filters.addEventListener('click', function() {
        isotopeItem.querySelector('.isotope-filters .filter-active').classList.remove('filter-active');
        this.classList.add('filter-active');
        initIsotope.arrange({
          filter: this.getAttribute('data-filter')
        });
        if (typeof aosInit === 'function') {
          aosInit();
        }
      }, false);
    });

  });

  /**
   * Frequently Asked Questions Toggle
   */
  document.querySelectorAll('.faq-item h3, .faq-item .faq-toggle').forEach((faqItem) => {
    faqItem.addEventListener('click', () => {
      faqItem.parentNode.classList.toggle('faq-active');
    });
  });

  /**
   * Animation on scroll function and init
   */
  function aosInit() {
    AOS.init({
      duration: 600,
      easing: 'ease-in-out',
      once: true,
      mirror: false
    });
  }
  window.addEventListener('load', aosInit);
  
  /**
   * Update Tracked Links
   */
  function updateTrackedLinks(link){
    const trackedLinks = new Set(JSON.parse(localStorage.getItem('lessons') || '[]'));
    if (link){
      trackedLinks.add(link);
      localStorage.setItem('lessons', JSON.stringify(Array.from(trackedLinks)));
    }
  }

    /**
   * Get started button, add to local storage
   */
  const get_started = document.getElementById('get-started');
  if(get_started){
    get_started.addEventListener('click', function(){
      updateTrackedLinks(get_started.href)
    })
  }
  
    /**
   * Dropdown links
   */    
    const trackedLinks = new Set(JSON.parse(localStorage.getItem('lessons') || '[]'));
    const ulElement = document.getElementById('lessons');
    const links = ulElement.querySelectorAll('#lessons li a');

    links.forEach(link => { //
      link.addEventListener('click', () => {
        updateTrackedLinks(link.href)
      });
    });


    /**
   * Check if the link is in the trackedLinks set
   */
    links.forEach(link => {
      if (trackedLinks.has(link.href)) {
        const check_icon = link.nextElementSibling
        link.classList.add('visited');
        check_icon.classList.remove('d-none');
      } 
    });
    

  /**
   * Check if the user input and save it if it's correct in local storage
   */
  const answered_questions = new Object(JSON.parse(localStorage.getItem('answered_questions') || '{}'));
  const answers = document.querySelectorAll('div .answer p mark')
  for (const answer of answers) {
    if (answered_questions.hasOwnProperty(answer.textContent)) {
        let local_check_icon_id = answered_questions[`${answer.textContent}_icon_id`]
        let local_input_id = answered_questions[`${answer.textContent}_input_id`]

        let check_icon = document.getElementById(local_check_icon_id)
        let input = document.getElementById(local_input_id)
        
        input.value = answer.textContent
        check_icon.classList.remove('invisible')
    }
  }

  let sumbit_btns = document.querySelectorAll('.quiz-submit');
  let swiper_div = document.getElementById('swiper');

  sumbit_btns.forEach(function(submit_btn){
    submit_btn.addEventListener('click',()=>{
      let input_id = `input-${submit_btn.id}`;
      let check_icon_id = `check-icon-${submit_btn.id}`;
      let x_icon_id = `x-icon-${submit_btn.id}`;

      let input = document.getElementById(input_id)
      let answer = document.getElementById(`answer-${submit_btn.id}`).querySelector('mark')
      let check_icon = document.getElementById(check_icon_id)
      let x_icon = document.getElementById(x_icon_id)

      if(input.value === answer.textContent.trim()){
        let correct_answer = String(answer.textContent.trim())
        
        swiper_div.classList.add('correct');
        x_icon.classList.add('invisible')
        check_icon.classList.remove('invisible')

        //Save the correct answer in local storage
        answered_questions[answer.textContent.trim()] = true
        answered_questions[`${answer.textContent.trim()}_icon_id`] = check_icon_id
        answered_questions[`${answer.textContent.trim()}_input_id`] = input_id
        localStorage.setItem('answered_questions', JSON.stringify(answered_questions));

        setTimeout(() => {
          swiper_div.classList.remove('correct');
        }, 1000);

      }else{

        swiper_div.classList.add('wrong');
        x_icon.classList.remove('invisible')
        check_icon.classList.add('invisible')
        setTimeout(() => {
          swiper_div.classList.remove('wrong');
          
        }, 1000);

      }
    })
  })

  /**
   * Show quiz answer
   */
  const show_answers = document.querySelectorAll('.show_answers');
  show_answers.forEach(function(show_answer){
    show_answer.addEventListener('click', function(){
      let answer_id = `answer-${show_answer.id}`
      let answers = document.getElementById(answer_id);
      answers.classList.toggle('invisible');
    })
  });

  /**
   * Next lesson, get all lessons and select the next one
   */
  const currentUrl = window.location.href;
  const navLessons = document.querySelectorAll('ul#lessons li a');
  const nextLessonBtn = document.getElementById('next-lesson');
  
  // Function to get the current lesson index
  function getCurrentLessonIndex() {
    for (let i = 0; i < navLessons.length; i++) {
      if (navLessons[i].href === currentUrl) {
        document.title = navLessons[i].textContent
        navLessons[i].parentElement.classList.add('active');
        updateTrackedLinks(navLessons[i].href)
        return i;
      }
    }
    return -1; // Not found
  }
  getCurrentLessonIndex()
  // Function to handle next button click
  nextLessonBtn.addEventListener('click', function() {
    const currentLessonIndex = getCurrentLessonIndex();
  
    // Check if there's a next lesson
    if (currentLessonIndex !== -1 && currentLessonIndex < navLessons.length - 1) {
      const nextLessonUrl = navLessons[currentLessonIndex + 1].href;
      window.location.href = nextLessonUrl;
    } else {
      // Handle no next lesson scenario (optional)
      alert("There are no more lessons!");
      
    }
  });
  
  const lastLesson = navLessons[navLessons.length - 1]
  if (currentUrl === lastLesson.href) {
    nextLessonBtn.remove()

    const header = document.querySelector('header .container-fluid')
    const newLink = document.createElement("a");
    newLink.classList.add("invisible", "btn-getstarted");
    newLink.textContent = 'Next Lesson'
    newLink.href = '#'
    header.appendChild(newLink)
  }
  

// localStorage.clear()
})();