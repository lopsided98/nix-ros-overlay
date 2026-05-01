
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-lyrical-ecl-eigen";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_eigen/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "7b14edf2cfa831e532870f412e1cd40789517396712a606afff06d320cfb6230";
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
