
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-sigslots-lite";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_sigslots_lite/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "fc94e3230171224cf8c9e17f317ce0ea4f3baac2b67c72f1e4ffa0325313aa6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
