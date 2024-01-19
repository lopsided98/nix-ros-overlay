
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, hls-lfcd-lds-driver, joint-state-publisher, robot-state-publisher, roscpp, rosserial-python, sensor-msgs, std-msgs, turtlebot3-description, turtlebot3-msgs, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-bringup";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3_bringup/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "f830143605731f35de4462ccb31cd2fa78d3e7fff6c370042185f32333b4aab8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs hls-lfcd-lds-driver joint-state-publisher robot-state-publisher roscpp rosserial-python sensor-msgs std-msgs turtlebot3-description turtlebot3-msgs turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
