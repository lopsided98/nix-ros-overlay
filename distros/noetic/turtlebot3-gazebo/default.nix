
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-description }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-gazebo";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/noetic/turtlebot3_gazebo/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "97f6e5a041d1edd6a549e8c696331ece95e96f285ae4dd595d29cf8a4c1d29a8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
