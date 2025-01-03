
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-io";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_io/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "ead77ccd29a9cd5125e594c2b8b7909f90746161999361f9eff2b06763d9eae2";
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
