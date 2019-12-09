
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, sensor-msgs, diagnostic-msgs, turtlebot3-description, turtlebot3-msgs, turtlebot3-teleop, robot-state-publisher, std-msgs, catkin, rosserial-python, hls-lfcd-lds-driver, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-bringup";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_bringup/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1e6254b12d861b5e5231ae8449e19ba72c3f4476cfccef437b6f20317699cd46";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs turtlebot3-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ joint-state-publisher sensor-msgs diagnostic-msgs turtlebot3-description turtlebot3-msgs turtlebot3-teleop robot-state-publisher std-msgs rosserial-python hls-lfcd-lds-driver roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
