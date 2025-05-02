
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-gz-sim-demos, simulation }:
buildRosPackage {
  pname = "ros-rolling-desktop-full";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/desktop_full/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "48ca1b35696f79ad0c8d2b805852f5cb9c0679d33c1cb910ace3bd35cd00ab35";
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
