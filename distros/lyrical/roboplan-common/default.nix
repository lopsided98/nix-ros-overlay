
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3 }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-common";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_common/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "40de07437c90d9019e348c80813e3c1749c2ffa56580e9a8fe30846f32552cf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Shared runtime support for RoboPlan Python packages.";
    license = with lib.licenses; [ mit ];
  };
}
