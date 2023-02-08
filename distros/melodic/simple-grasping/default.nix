
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-melodic-simple-grasping";
  version = "0.3.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "simple_grasping-release";
        rev = "release/melodic/simple_grasping/0.3.1-0";
        sha256 = "sha256-VdAej5oMWugDpx9ywZMvatIrwaEPQpPEFvu09pLpb7o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs grasping-msgs message-runtime moveit-msgs moveit-python pcl-ros roscpp sensor-msgs shape-msgs tf vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
