
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-iron-eigen-stl-containers";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/iron/eigen_stl_containers/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "fc0d9a7fe85bf315eb8cd3872d549b8d5f44b774723e7799f83f9c58e32e732b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
