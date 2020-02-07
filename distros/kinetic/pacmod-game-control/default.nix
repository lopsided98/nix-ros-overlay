
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pacmod-msgs, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod-game-control";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/kinetic/pacmod_game_control/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d5d6e476b8f0ba42a1eeef98c5a7fafccd3fc7c5eaa5157a5fcf6cc4fb823dfc";
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
