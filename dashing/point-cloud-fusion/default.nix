
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rclcpp-lifecycle, tf2-geometry-msgs, ament-cmake-pclint, sensor-msgs, message-filters, tf2-ros, tf2-sensor-msgs, rclcpp, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-point-cloud-fusion";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/point_cloud_fusion/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "aeed47434e3dc1c712ea0fac967b1a52e126397ababf9381673ca16f7442ffa7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle tf2-geometry-msgs sensor-msgs message-filters tf2-ros tf2-sensor-msgs rclcpp lidar-utils ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ rclcpp-lifecycle tf2-geometry-msgs sensor-msgs message-filters tf2-ros tf2-sensor-msgs rclcpp lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''point cloud fusion'';
    license = with lib.licenses; [ asl20 ];
  };
}
