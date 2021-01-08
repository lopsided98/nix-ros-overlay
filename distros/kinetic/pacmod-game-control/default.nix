
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pacmod-msgs, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod-game-control";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/kinetic/pacmod_game_control/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "afabe33a0e96ede8c1796c57cf9181dda69b7b9f1de2f5245b7aa8a53f4e7434";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ joy pacmod-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package for controlling the AStuff PACMod with a Joystick'';
    license = with lib.licenses; [ mit ];
  };
}
