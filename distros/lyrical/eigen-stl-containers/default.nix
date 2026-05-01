
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-lyrical-eigen-stl-containers";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/lyrical/eigen_stl_containers/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "23f44ce94ad09eb026f5ca0507687bd48c46ad502a76cd6063514e4d406959bb";
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
