
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, ros-environment, cmake-modules, boost, gtest, catkin, pythonPackages, tinyxml, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-rospack";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/kinetic/rospack/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "eee4dafa4ba7875dc16aa0a820f9ed89089bda26104b42b8ee3bc3066396bcba";
  };

  buildType = "catkin";
  buildInputs = [ python cmake-modules boost gtest tinyxml pkg-config ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ python ros-environment boost pythonPackages.rosdep tinyxml pkg-config pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
