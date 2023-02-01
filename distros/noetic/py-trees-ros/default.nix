
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, py-trees, py-trees-msgs, python-qt-binding, python3Packages, rosbag, rospy, rostest, rosunit, sensor-msgs, std-msgs, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-py-trees-ros";
  version = "0.6.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "py_trees_ros-release";
        rev = "release/noetic/py_trees_ros/0.6.1-1";
        sha256 = "sha256-cgSfHSU1D6tMO84W8bK9PfkUOvSuwNM89WR3nl+QVMU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ geometry-msgs py-trees python-qt-binding rostest rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs py-trees py-trees-msgs python3Packages.rospkg python3Packages.termcolor rosbag rospy sensor-msgs std-msgs unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
