
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-sigslots-lite";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_sigslots_lite/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "709c62f11db109f6e7bd613a9d74eb2f48786c8b954fc2ac5e4c0b011ca2c6e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
