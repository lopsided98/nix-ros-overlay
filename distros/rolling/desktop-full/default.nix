
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-gz-sim-demos, simulation }:
buildRosPackage {
  pname = "ros-rolling-desktop-full";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/desktop_full/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "ae99f919f3279035a0db3aa17d8f0cf541129b01c87fdfcb6d02ef0a34ad0378";
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
