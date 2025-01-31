
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-eigen-stl-containers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/jazzy/eigen_stl_containers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "0af72f653344e7ed08ec5c4692a729d56867bdad8285e706583df020a2601d88";
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
