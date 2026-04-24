
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, pcl-conversions, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rclcpp-components, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-cloudini-ros";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/kilted/cloudini_ros/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d89b4c09faf6615ea542a55c6414a5177274f7a3a70f0aeb97f768212e1b40d1";
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
