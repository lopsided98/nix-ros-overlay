
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sbus-driver";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sbus_driver/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "81987b4ee9c75754ec06283c38d82aa8d9ff2b31dea62e6fe7a5b6ae00b76481";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-linux tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SBUS protocol driver library and ROS 2 receiver node.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
