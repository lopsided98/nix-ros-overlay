
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-nav2-common";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_common/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "c6e5326de2ab71eab276b40630955746a2c20ac58efc6e8514d46d6ef4b4c2a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core launch launch-ros osrf-pycommon python3Packages.pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Common support functionality used throughout the navigation 2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
