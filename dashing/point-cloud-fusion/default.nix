
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rclcpp-lifecycle, tf2-geometry-msgs, sensor-msgs, ament-cmake-gtest, message-filters, tf2-ros, tf2-sensor-msgs, rclcpp, eigen, ament-lint-auto, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-point-cloud-fusion";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/point_cloud_fusion/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "373824982fc204d6c1e5cef13f76685efa92afa336477a171204baac17ad2522";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle tf2-geometry-msgs sensor-msgs message-filters tf2-ros tf2-sensor-msgs rclcpp eigen lidar-utils ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-lifecycle tf2-geometry-msgs sensor-msgs message-filters tf2-ros tf2-sensor-msgs rclcpp eigen lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''point cloud fusion'';
    license = with lib.licenses; [ asl20 ];
  };
}
