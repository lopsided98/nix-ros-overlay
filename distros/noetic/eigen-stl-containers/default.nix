
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-noetic-eigen-stl-containers";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eigen_stl_containers-release/archive/release/noetic/eigen_stl_containers/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "429b113a5389a4a38b94d79def3bb8acc51f9589fb97013adf9d3a716d026a18";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
