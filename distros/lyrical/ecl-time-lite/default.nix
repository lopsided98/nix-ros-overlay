
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-time-lite";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/lyrical/ecl_time_lite/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "8d68cc463ce5c07e217df4153059a1a43155c0ac00ef6bf9d545c2a7ecc3c04b";
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
