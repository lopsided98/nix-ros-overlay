
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, pcl-conversions, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rclcpp-components, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-cloudini-ros";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_ros/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "66b0575bb0072463bb3d7eaabd4ff8e3851f79333456e39d09a6448383cf0d2a";
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
