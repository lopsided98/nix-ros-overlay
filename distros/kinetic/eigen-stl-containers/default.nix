
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigen-stl-containers";
  version = "0.1.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eigen_stl_containers-release/archive/release/kinetic/eigen_stl_containers/0.1.8-0.tar.gz";
    name = "0.1.8-0.tar.gz";
    sha256 = "c29f14419997cb09120b564b1463d281c1739739f93b43525f6677c363365b3c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
