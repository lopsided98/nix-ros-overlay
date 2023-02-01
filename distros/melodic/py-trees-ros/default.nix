
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, py-trees, py-trees-msgs, python-qt-binding, pythonPackages, rosbag, rospy, rostest, rosunit, sensor-msgs, std-msgs, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-py-trees-ros";
  version = "0.5.21-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "py_trees_ros-release";
        rev = "release/melodic/py_trees_ros/0.5.21-1";
        sha256 = "sha256-NzN7FigW2Rx516FP1NhCVitVmiO042cEllEEsU8dX2k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ geometry-msgs py-trees python-qt-binding rostest rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs py-trees py-trees-msgs pythonPackages.rospkg pythonPackages.termcolor rosbag rospy sensor-msgs std-msgs unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
