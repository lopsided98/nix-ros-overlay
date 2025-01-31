
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-eigen-stl-containers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/rolling/eigen_stl_containers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "da50e0c2d218d29397c0fab94b972a990bbdc10b1bc3e22122574b4d66be66a3";
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
