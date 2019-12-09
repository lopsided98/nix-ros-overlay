
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, turtlebot3-msgs, robot-state-publisher, std-msgs, tf, catkin, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-fake";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/kinetic/turtlebot3_fake/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "442b5e3b9e071e2968f829c7a9d0088aaac898135c92c7f0017de0c0ba1ef59a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs turtlebot3-msgs std-msgs tf roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs turtlebot3-msgs robot-state-publisher std-msgs tf roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
