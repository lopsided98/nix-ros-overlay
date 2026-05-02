
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-rolling-ecl-eigen";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_eigen/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "fe8e675bf0c574c53d56081577f28e3430a3beaa2bb20836ad2e5cf90907d264";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This provides an Eigen implementation for ecl's linear algebra.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
