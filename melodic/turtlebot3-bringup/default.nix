
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, sensor-msgs, catkin, turtlebot3-msgs, turtlebot3-description, turtlebot3-teleop, hls-lfcd-lds-driver, std-msgs, diagnostic-msgs, robot-state-publisher, roscpp, joint-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-bringup";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_bringup/1.2.2-1.tar.gz;
    sha256 = "fd37a6185328f5fcf0bcc9be075363a81f04bd19df71eae40c10afad01517336";
  };

  buildInputs = [ sensor-msgs turtlebot3-msgs std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ rosserial-python sensor-msgs turtlebot3-description turtlebot3-msgs robot-state-publisher hls-lfcd-lds-driver std-msgs diagnostic-msgs turtlebot3-teleop roscpp joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
