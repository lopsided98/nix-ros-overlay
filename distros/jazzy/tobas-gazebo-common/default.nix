
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-common";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_common/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "9b454baae65fe605ce917ee547a18b74412fbfdc92d9d2370c8f2ae139e51244";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and utilities for Tobas Gazebo plugins and simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
