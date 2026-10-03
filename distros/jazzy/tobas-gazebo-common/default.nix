
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "536b27c69c8d92697682e9b806a16396dca2306ab837c5aa57508d52aa40c752";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and utilities for Tobas Gazebo plugins and simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
