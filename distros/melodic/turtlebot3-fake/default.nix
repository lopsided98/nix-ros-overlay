
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, robot-state-publisher, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-fake";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_fake/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4a55cbdb39090ea375189f1a39c407a88e8293de5e4f0798a7208a5cd54cebcb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs robot-state-publisher roscpp sensor-msgs std-msgs tf turtlebot3-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
