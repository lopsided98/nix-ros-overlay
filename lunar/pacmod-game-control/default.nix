
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, joy, pacmod-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pacmod-game-control";
  version = "2.3.0";

  src = fetchurl {
    url = https://github.com/astuff/pacmod_game_control-release/archive/release/lunar/pacmod_game_control/2.3.0-0.tar.gz;
    sha256 = "2dbddd56e7cc1fe3c84621144e1c184bb1b7ab90309d5efa4289378b272ce8de";
  };

  buildInputs = [ sensor-msgs joy pacmod-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs joy pacmod-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package for controlling the AStuff PACMod with a Joystick'';
    license = with lib.licenses; [ mit ];
  };
}
