
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-common";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_common/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "77632cc4c5a1fdc73be71862245efdf9f6c2bb26b61541582fe4fb40f9abf7af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and utilities for Tobas Gazebo plugins and simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
