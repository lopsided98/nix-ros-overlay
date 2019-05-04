
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, sensor-msgs, catkin, gazeboSimulator, roscpp, nav-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-gazebo";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/kinetic/turtlebot3_gazebo/1.2.0-0.tar.gz;
    sha256 = "7cbb7c8fa92d4145fb3af1aa2ab1abcd37e12f9c5308704ec67c5b1c78d4bd49";
  };

  buildInputs = [ gazebo-ros sensor-msgs roscpp nav-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo sensor-msgs roscpp nav-msgs std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
