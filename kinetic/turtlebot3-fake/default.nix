
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, turtlebot3-msgs, nav-msgs, robot-state-publisher, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-fake";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/kinetic/turtlebot3_fake/1.2.0-0.tar.gz;
    sha256 = "442b5e3b9e071e2968f829c7a9d0088aaac898135c92c7f0017de0c0ba1ef59a";
  };

  buildInputs = [ nav-msgs geometry-msgs std-msgs sensor-msgs tf turtlebot3-msgs roscpp ];
  propagatedBuildInputs = [ nav-msgs robot-state-publisher geometry-msgs std-msgs sensor-msgs tf turtlebot3-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    #license = lib.licenses.Apache 2.0;
  };
}
