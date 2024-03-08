
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-eigen-stl-containers";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/rolling/eigen_stl_containers/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "b564f48307bbf86683e810dbd75557ed74f7ed7ff441c850592778edd130a74c";
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
