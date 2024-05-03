
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-gz-sim-demos, simulation }:
buildRosPackage {
  pname = "ros-rolling-desktop-full";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/desktop_full/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "a2016d5789def716f2e473eb261e440c08a393cb71d4198290a3c7834ceef5bc";
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
