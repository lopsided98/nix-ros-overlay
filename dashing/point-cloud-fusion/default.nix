
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, eigen, lidar-utils, message-filters, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-point-cloud-fusion";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/point_cloud_fusion/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "373824982fc204d6c1e5cef13f76685efa92afa336477a171204baac17ad2522";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen lidar-utils message-filters rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''point cloud fusion'';
    license = with lib.licenses; [ asl20 ];
  };
}
