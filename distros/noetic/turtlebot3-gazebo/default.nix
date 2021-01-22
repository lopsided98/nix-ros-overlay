
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-description }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-gazebo";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/noetic/turtlebot3_gazebo/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "c424f455e4425a8c810fb321a397492169366cc8cfeb0ea926cc79f0e611bf6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
