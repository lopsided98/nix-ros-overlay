
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3 }:
buildRosPackage {
  pname = "ros-kilted-roboplan-common";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_common/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "73fbab8162fca3c6aca2e636ddf6808de263a0fd94023f8d9c19231ddfb96d21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Shared runtime support for RoboPlan Python packages.";
    license = with lib.licenses; [ mit ];
  };
}
