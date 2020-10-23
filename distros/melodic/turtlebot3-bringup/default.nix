
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, hls-lfcd-lds-driver, joint-state-publisher, robot-state-publisher, roscpp, rosserial-python, sensor-msgs, std-msgs, turtlebot3-description, turtlebot3-msgs, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-bringup";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_bringup/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "a5a6930532a969616bffc09a8abbf4107ef41f2a927d6ca20ce752345dd2e4f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs hls-lfcd-lds-driver joint-state-publisher robot-state-publisher roscpp rosserial-python sensor-msgs std-msgs turtlebot3-description turtlebot3-msgs turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
