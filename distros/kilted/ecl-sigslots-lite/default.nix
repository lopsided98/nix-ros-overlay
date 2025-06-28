
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-sigslots-lite";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/kilted/ecl_sigslots_lite/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "2957ceb40de88ad4a4e5d9c5fa42f5544a5c19cd2e48711620fa7af8a41b8be2";
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
