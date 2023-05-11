# Riccioni's Legacy

This repo hosts a project for my MA Dissertation on Electronic Publishing which consists in the digitisation of a diary written between 1901 and 1903 by the prison guard Pasquale Riccioni.  

The project comprises the following parts:  

- IIIF APIs:
  - Image APIs ([Image Requests](https://iiif.archivelab.org/iiif/tesi_db_1r/full/full/0/default.jpg) and  [Image Information Requests](https://iiif.archivelab.org/iiif/tesi_db_1r/info.json) - eg. *r1*) of page scans, obtained with the [Archive Labs IIIF service](https://training.iiif.io/iiif-online-workshop/day-two/image-servers/iiif-hosting-ia.html);  
  - [Presentation API of a manifest](/tesi_db_manifest.json);  

- [TEI encoding of the text](/tesi_db_text.xml) (**till *10r* atm - see below**);  

- a website for its publication, composed of 4 pages:
  - [informative homepage in HTML](/tesi_db_homepage.html);  
  - 2 pages with JS viewers:  
    - [Universal Viewer](/tesi_db_uv.html);  
    - [Mirador 3](/tesi_db_mira.html);  
  - [XSL document to turn the TEI encoding into XHTML](/tesi_db_transfo.xsl);  
  - [CSS document to style the website](/tesi_db_style.css).  

### The website is online at the following [link](https://dariobaldini98.github.io/tesi_db/tesi_db_homepage.html)!  

## :confetti_ball::tada: Latest News: I graduated! :tada::confetti_ball:  
I'll keep working at this project partly as a pastime and partly to hone my coding skills. However, it is now open for cooperation, so feel free to suggest any improvement, or even ask for access to the documents.  

Below there are some feature I'd like to implement:  
- [ ] [Complete transcription and encoding of the text](https://github.com/dariobaldini98/tesi_db/issues/1);  
- [ ] [Annotate peculiar textual features in the manifest](https://github.com/dariobaldini98/tesi_db/issues/2);  
- [x] [Add semantic metadata](https://github.com/dariobaldini98/tesi_db/issues/3);  
- [x] [Add sidebar to show header metadata in the transcription page](https://github.com/dariobaldini98/tesi_db/issues/4);  
- [x] [Add sitemap](https://github.com/dariobaldini98/tesi_db/issues/5);  
- [x] [Add RSS feed](https://github.com/dariobaldini98/tesi_db/issues/6);  

![CC BY-NC-ND 4.0](https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png) This project is licensed under a [CC BY-NC-ND 4.0 International Licence](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en)