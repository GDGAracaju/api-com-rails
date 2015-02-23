CKEDITOR.editorConfig = function(config) {
  config.entities_latin = false;
  config.fillEmptyBlocks = false;
  config.language = 'pt-BR';
  config.toolbar = 'MyToolbar';

  config.toolbar_MyToolbar =
    [
    { name: 'document', items : [ 'NewPage','Preview', 'Print' ] },
    { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
    { name: 'insert', items : [ 'Table','HorizontalRule','SpecialChar','PageBreak'
      ,'Iframe' ] },
    '/',
    { name: 'styles', items : [ 'Styles','Format' ] },
    { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
    { name: 'paragraph', items : [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
    { name: 'links', items : [ 'Link','Unlink'] }
  ];
};
