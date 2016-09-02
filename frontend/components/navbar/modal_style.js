const ModalStyle = {
  overlay : {
     position        : 'fixed',
     top             : 0,
     left            : 0,
     right           : 0,
     bottom          : 0,
     backgroundColor : 'rgba(128, 128, 128, 0.75)',
   },
   content : {
     position        : 'fixed',
     top             : '100px',
     left            : '150px',
     right           : '150px',
     bottom          : '100px',
     border          : '1px solid #ccc',
     padding         : '20px',
     opacity         : '0',
     transition      : 'opacity .5s'
   }
};

export default ModalStyle;
