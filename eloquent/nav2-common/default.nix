
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-nav2-common";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_common/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ada9db384d35d0c86a376834bca29c7ec7d3ca1216a5ddd6c90951e6c4f99f98";
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
