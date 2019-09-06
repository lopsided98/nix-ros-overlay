
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, joy, pacmod-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pacmod-game-control";
  version = "2.3.0";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/melodic/pacmod_game_control/2.3.0-0.tar.gz";
    name = "2.3.0-0.tar.gz";
    sha256 = "279a95661041ef6f88cf7ba26f5f61af4010fac0ca579a38eddad0088f6dcabb";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs joy pacmod-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs joy pacmod-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package for controlling the AStuff PACMod with a Joystick'';
    license = with lib.licenses; [ mit ];
  };
}
