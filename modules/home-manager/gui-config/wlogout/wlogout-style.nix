{
  programs.wlogout.style = 
  ''
    window {
      font-family: JetBrainsMono Nerd Font, monospace;
      font-size: 24pt;
      color: #cdd6f4; 
      background-color: rgba(17, 17, 27, .88);
    }

    button {
      background-repeat: no-repeat;
      background-position: center;
      background-size: 70%;
      border: none;
      color: #ced7f4;
      text-shadow: none;
      border-radius: 20px 20px 20px 20px;
      background-color: rgba(30, 30, 46, 0);
      margin: 5px;
      box-shadow: none;
      transition: box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
    }

    button:hover {
      background-color: rgba(49, 50, 68, 0.1);
    }
    button:focus {
      outline: none;
      background-color: rgba(49, 50, 68, 0.1);
    }

    #lock {
      background-image: url("/home/yolsh/Pictures/GUI/rocket-grey.png");
    }
    #lock:hover {
      background-image: url("/home/yolsh/Pictures/GUI/rocket.png");
    }
    #lock:focus {
      outline: none;
      background-image: url("/home/yolsh/Pictures/GUI/rocket.png");
    }

    #logout {
      background-image: url("/home/yolsh/Pictures/GUI/astronaut-grey.png");
    }
    #logout:hover {
      background-image: url("/home/yolsh/Pictures/GUI/astronaut.png");
    }
    #logout:focus {
      outline: none;
      background-image: url("/home/yolsh/Pictures/GUI/astronaut.png");
    }

    #shutdown {
      background-image: url("/home/yolsh/Pictures/GUI/big-bang-grey.png");
    }
    #shutdown:hover {
      background-image: url("/home/yolsh/Pictures/GUI/big-bang.png");
    }
    #shutdown:focus {
      outline: none;
      background-image: url("/home/yolsh/Pictures/GUI/big-bang.png");
    }

    #reboot {
      background-image: url("/home/yolsh/Pictures/GUI/satellite-grey.png");
    }
    #reboot:hover {
      background-image: url("/home/yolsh/Pictures/GUI/satellite.png");
    }
    #reboot:focus {
      outline: none;
      background-image: url("/home/yolsh/Pictures/GUI/satellite.png");
    }
  '';
}
