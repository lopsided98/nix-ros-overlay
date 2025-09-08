
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-time-lite";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/kilted/ecl_time_lite/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "26603efaf01570eb84e82845437707f7010a41e3a9eebc3cec00ec45cc06de2e";
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
