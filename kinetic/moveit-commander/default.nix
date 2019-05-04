
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, moveit-resources, shape-msgs, sensor-msgs, catkin, pythonPackages, rostest, rospy, moveit-msgs, tf, moveit-ros-planning-interface, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-commander";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_commander/0.9.15-0.tar.gz;
    sha256 = "56010a9efc3e25eba66c966e7e4f4aec531be735c5c148c5072b9b4e922dea3f";
  };

  buildInputs = [ python ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ python shape-msgs sensor-msgs rospy moveit-msgs tf moveit-ros-planning-interface geometry-msgs ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''Python interfaces to MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
