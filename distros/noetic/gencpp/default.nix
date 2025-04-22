
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gencpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/noetic/gencpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "197538d2bce13e399ebd6af742e8f08dd848f2f3fad81a8eae23e79740a67470";
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
