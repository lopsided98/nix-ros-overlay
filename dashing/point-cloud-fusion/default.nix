
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp-lifecycle, message-filters, lidar-utils, tf2-sensor-msgs, ament-lint-common, ament-cmake, autoware-auto-cmake, tf2-geometry-msgs, ament-lint-auto, eigen, ament-cmake-gtest, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-point-cloud-fusion";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/point_cloud_fusion/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "373824982fc204d6c1e5cef13f76685efa92afa336477a171204baac17ad2522";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle message-filters sensor-msgs lidar-utils tf2-sensor-msgs tf2-geometry-msgs eigen rclcpp tf2-ros ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle message-filters sensor-msgs lidar-utils tf2-sensor-msgs tf2-geometry-msgs eigen rclcpp tf2-ros ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''point cloud fusion'';
    license = with lib.licenses; [ asl20 ];
  };
}
