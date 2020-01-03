
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pacmod-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod-game-control";
  version = "2.3.0";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/kinetic/pacmod_game_control/2.3.0-0.tar.gz";
    name = "2.3.0-0.tar.gz";
    sha256 = "4bf23d9a203f9d2a26a4222a8f2a7e3f5c21b269569c346264af867219e6a375";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy pacmod-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package for controlling the AStuff PACMod with a Joystick'';
    license = with lib.licenses; [ mit ];
  };
}
