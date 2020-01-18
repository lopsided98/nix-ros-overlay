
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazeboSimulator, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-gazebo";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_gazebo/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "9c82b64f9c29a023ddaf9388d987b60a7584a62400a9ca9d4421347ca4750651";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
