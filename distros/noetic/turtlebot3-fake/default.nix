
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, robot-state-publisher, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-fake";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/noetic/turtlebot3_fake/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "092140ac011b733db80dd95dfdff2a6fbc4cb5423811ab72c1262be5089d4532";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs robot-state-publisher roscpp sensor-msgs std-msgs tf turtlebot3-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
