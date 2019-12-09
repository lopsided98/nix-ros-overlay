
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, gazeboSimulator, geometry-msgs, std-msgs, tf, catkin, roscpp, gazebo-ros, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-gazebo";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_gazebo/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "9c82b64f9c29a023ddaf9388d987b60a7584a62400a9ca9d4421347ca4750651";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf roscpp gazebo-ros nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs gazeboSimulator.gazebo tf roscpp gazebo-ros nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
