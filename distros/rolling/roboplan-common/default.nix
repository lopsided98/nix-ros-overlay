
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3 }:
buildRosPackage {
  pname = "ros-rolling-roboplan-common";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_common/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "6f53f2538839a8835cb45a565a283ded2687779ae14b437f9860107f3c02aed3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Shared runtime support for RoboPlan Python packages.";
    license = with lib.licenses; [ mit ];
  };
}
