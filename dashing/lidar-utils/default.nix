
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, ament-lint-common, ament-cmake-pclint, sensor-msgs, rclcpp, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-lidar-utils";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/lidar_utils/0.0.1-1;
    sha256 = "0ebf7e10a14196fd8e8fdcec1481d7efe79de8e6aa7bad726777ff99889aad9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ rclcpp-lifecycle sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Common utility functions and classes for point clouds'';
    license = with lib.licenses; [ "Apex.AI License" ];
  };
}
