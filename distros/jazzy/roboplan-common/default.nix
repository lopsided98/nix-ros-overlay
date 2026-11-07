
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3 }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-common";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_common/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "782b06597215a0d6ee093b9e8c06f44a708aeded3b568f419fb74ed9683a18df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Shared runtime support for RoboPlan Python packages.";
    license = with lib.licenses; [ mit ];
  };
}
