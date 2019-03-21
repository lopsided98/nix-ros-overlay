
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, turtlebot3-msgs, nav-msgs, robot-state-publisher, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-fake";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_fake/1.2.0-0.tar.gz;
    sha256 = "5e76727354184cc0f97b0cf61d4c3743301e431c5d46bbd87436fbed8f1e2e95";
  };

  propagatedBuildInputs = [ nav-msgs robot-state-publisher geometry-msgs std-msgs sensor-msgs tf turtlebot3-msgs roscpp ];
  nativeBuildInputs = [ nav-msgs catkin geometry-msgs std-msgs sensor-msgs tf turtlebot3-msgs roscpp ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    #license = lib.licenses.Apache 2.0;
  };
}
