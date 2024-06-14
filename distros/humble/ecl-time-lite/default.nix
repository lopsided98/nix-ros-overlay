
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-time-lite";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_time_lite/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0f0056fa9fb28438d915a819c814efad57bf2b250063d500d3bfec0c247d84aa";
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
