# Pin npm packages by running ./bin/importmap

pin "application"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/flatpickr.js"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "flatpickr"

