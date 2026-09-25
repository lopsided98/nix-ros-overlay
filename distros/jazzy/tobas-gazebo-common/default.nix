
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-common";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_common/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "7b44f12499b5eec835ca23ad3b7dc36fc6418ece24d67508f6dc09046ef07d19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and utilities for Tobas Gazebo plugins and simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
