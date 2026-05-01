
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-gz-sim-demos, simulation }:
buildRosPackage {
  pname = "ros-lyrical-desktop-full";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/lyrical/desktop_full/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "d4c9dbcd0a1cf30601748da33bd5cb9e9b3330342734b42e694427d44576f133";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ desktop perception ros-gz-sim-demos simulation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a 'batteries included' experience to novice users.";
    license = with lib.licenses; [ asl20 ];
  };
}
