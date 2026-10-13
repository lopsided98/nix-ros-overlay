
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-common";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_common/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "deffc2ba1577305ed7160c6cf0c3c1753a1f5119337db01fcf4f1e006b416726";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and utilities for Tobas Gazebo plugins and simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
