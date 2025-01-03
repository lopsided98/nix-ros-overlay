
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-rolling-ecl-eigen";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_eigen/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "b36cbfcd334674391ce97309b5eec2fb1fac19d31ebf22dd94f713b0ce52ecc6";
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
