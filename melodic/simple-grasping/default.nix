
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, cmake-modules, moveit-python, sensor-msgs, catkin, roscpp, message-generation, actionlib, message-runtime, vtkWithQt4, moveit-msgs, tf, pcl-ros, grasping-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-simple-grasping";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/simple_grasping-release/archive/release/melodic/simple_grasping/0.3.1-0.tar.gz;
    sha256 = "1dada4bbf81347bac9d7fee738e20246ec4f6f25a8983a7edda10894bd896a54";
  };

  buildInputs = [ shape-msgs cmake-modules sensor-msgs roscpp message-generation actionlib vtkWithQt4 moveit-msgs tf pcl-ros grasping-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs moveit-python sensor-msgs roscpp actionlib message-runtime vtkWithQt4 moveit-msgs tf pcl-ros grasping-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
