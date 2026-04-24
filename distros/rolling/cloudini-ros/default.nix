
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, pcl-conversions, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rclcpp-components, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-cloudini-ros";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/rolling/cloudini_ros/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cee35a64856de7722ed24cef8e72f17c49ba6052750287353f0dd732f70e2628";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cloudini-lib pcl-conversions pluginlib point-cloud-interfaces point-cloud-transport rclcpp rclcpp-components rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ "Apache" ];
  };
}
