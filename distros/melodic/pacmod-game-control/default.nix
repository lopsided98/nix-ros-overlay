
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pacmod-msgs, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pacmod-game-control";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod_game_control-release/archive/release/melodic/pacmod_game_control/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d6dcf815bd4eeb07f8f36532359eb8dd0bb5bae2942df2a54a36eb2bad16611f";
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
