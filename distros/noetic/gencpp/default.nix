
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gencpp";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/noetic/gencpp/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "a5ad74493729294c96d29a25677ce317c0f77ad1b03f1cbe132211e0f1ba3471";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "C++ ROS message and service generators.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
