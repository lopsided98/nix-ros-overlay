
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, pcl-conversions, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rclcpp-components, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cloudini-ros";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/jazzy/cloudini_ros/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5a05c47171903e55e0f383e0335c086be2a35bd94a9974e1098f93bedd8a58fd";
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
