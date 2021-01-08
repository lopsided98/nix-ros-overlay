
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python, pythonPackages, ros-environment, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-rospack";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/kinetic/rospack/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "eee4dafa4ba7875dc16aa0a820f9ed89089bda26104b42b8ee3bc3066396bcba";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules gtest ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ boost pkg-config python pythonPackages.catkin-pkg pythonPackages.rosdep ros-environment tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
