
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, geometry-msgs, moveit-python, tf, actionlib, shape-msgs, grasping-msgs, vtkWithQt4, cmake-modules, catkin, moveit-msgs, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-simple-grasping";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/melodic/simple_grasping/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "1dada4bbf81347bac9d7fee738e20246ec4f6f25a8983a7edda10894bd896a54";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs geometry-msgs actionlib shape-msgs tf cmake-modules vtkWithQt4 grasping-msgs moveit-msgs roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs geometry-msgs moveit-python tf actionlib shape-msgs grasping-msgs vtkWithQt4 moveit-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
