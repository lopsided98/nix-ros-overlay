
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-nav2-common";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_common/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "af0c0d07142286652c0fdc9be2b5248944aadb748fb4531a8bdc6bc41f6dc2b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core launch launch-ros osrf-pycommon python3Packages.pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Common support functionality used throughout the navigation 2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
