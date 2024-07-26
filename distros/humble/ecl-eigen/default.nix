
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-humble-ecl-eigen";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_eigen/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "f5ed6b7ca602f659d65a3beff670bc78a0712ea134999f6d06d3b9767d163e80";
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
