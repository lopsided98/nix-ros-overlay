
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-io";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/ecl_io/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "583b71dc4d366a44b1c63a701540cdfe318ec5124a494c7531420b71055c3fd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Most implementations (windows, posix, ...) have slightly different api for
     low level input-output functions. These are gathered here and re-represented
     with a cross platform set of functions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
