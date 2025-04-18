
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-time-lite";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_time_lite/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "27b57322c9527a5bed42c078d7e90964543d3f0b2521be69a3026f85e14a3a61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides a portable set of time functions that are especially useful for
     porting other code or being wrapped by higher level c++ classes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
