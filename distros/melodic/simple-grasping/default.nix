
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf, vtkWithQt4 }:
buildRosPackage {
  pname = "ros-melodic-simple-grasping";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/melodic/simple_grasping/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "1dada4bbf81347bac9d7fee738e20246ec4f6f25a8983a7edda10894bd896a54";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs grasping-msgs message-runtime moveit-msgs moveit-python pcl-ros roscpp sensor-msgs shape-msgs tf vtkWithQt4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
