
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-slam";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_slam/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "4b81004b14a65def505bfa532335233542da0b2b669733dc5128da3f992db603";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_slam package provides roslaunch scripts for starting the SLAM'';
    license = with lib.licenses; [ asl20 ];
  };
}
