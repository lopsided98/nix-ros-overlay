
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, cmake-modules, moveit-python, sensor-msgs, catkin, roscpp, message-generation, actionlib, message-runtime, vtkWithQt4, moveit-msgs, tf, pcl-ros, grasping-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-simple-grasping";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/simple_grasping-release/archive/release/lunar/simple_grasping/0.3.1-0.tar.gz;
    sha256 = "7f53fa8d6a511491867d4679106d14b8dfecc97ebd5f262962a8a9116e282c44";
  };

  buildInputs = [ shape-msgs cmake-modules sensor-msgs roscpp message-generation actionlib vtkWithQt4 moveit-msgs tf pcl-ros grasping-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs moveit-python sensor-msgs roscpp actionlib message-runtime vtkWithQt4 moveit-msgs tf pcl-ros grasping-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
