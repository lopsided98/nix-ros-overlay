
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "3e9f2595b11e90597e099166f3a0f5181ab5e263aa3d5b49f0547384e73d944a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rosclean: cleanup filesystem resources (e.g. log files).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
