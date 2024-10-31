{config, ...}: {
  programs.wofi.style = 
  ''
    #window {
      background-color: transparent;
      border-radius: 15px;
      font-family: sans-serif;
      animation: fadeIn;
      animation-duration: 0.2s;
    }

    @keyframes fadeIn {
      from { opacity: 0; }
      to { opacity: 1; }
    }

    #outer-box {
      margin: 15px;
      border-radius: 15px;
      background-color: #443c7c;
      box-shadow: 0px 0px 5px 0 #0F0F0F;
    }

    #inner-box {
      color: #d8dee9;
      padding: 10px;
      padding-top: 5px;
    }

    #input {
      color: #e5e9f0;
      border: 2px solid #5e81ac;
      background-color: #4c566a;
      padding: 6px;
      margin: 15px;
      margin-bottom: 0px;
      font-size: 16px;
      border-radius: 5px;
    }

    #entry {
      border-radius: 5px;
      padding: 7px;
      margin: 0px 5px 0px 5px;
    }


    #entry:selected {
      background-color: #5e81ac;
    }
     
    #text:selected {
      color: #d8dee9;
    }

    #text {
      font-size: 16px;
      padding: 7px;
      color: #d8dee9;
    } 

    #img {
      padding: 4px;
    }
  '';
}
