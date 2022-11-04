
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pacmod-msgs, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pacmod-game-control";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/melodic/pacmod_game_control/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7ac2b341575d857379b9cec72b934042fc3832bab2d608857aab922236ba3820";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ joy pacmod-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package for controlling the AStuff PACMod with a Joystick'';
    license = with lib.licenses; [ mit ];
  };
}
