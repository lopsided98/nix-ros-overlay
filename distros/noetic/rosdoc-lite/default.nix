
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, genmsg, graphviz, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosdoc-lite";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosdoc_lite-release/archive/release/noetic/rosdoc_lite/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "3e29941517851859d8b363059988090c73a71d495e89ae9e07e85350b1af9456";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ doxygen genmsg graphviz python3Packages.catkin-pkg python3Packages.kitchen python3Packages.pyyaml python3Packages.rospkg python3Packages.sphinx ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This ROS package wraps documentation tools like doxygen, sphinx,
    and epydoc, making it convenient to generate ROS package
    documentation.

    It also generates online documentation for the ROS wiki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
