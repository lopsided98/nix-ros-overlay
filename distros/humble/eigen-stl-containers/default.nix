
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-eigen-stl-containers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/humble/eigen_stl_containers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c213498c7b752e1702adf7e7a1868c50f456a2825e18b4f434971d15abf4bd81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
