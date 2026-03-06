
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, mcap-vendor, pcl-conversions, pcl-ros, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rclcpp-components, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cloudini-ros";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/jazzy/cloudini_ros/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c2928f81bac2de8e8908c3721ae3626b29d53e010f1e4562bd732960b3c9f234";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cloudini-lib mcap-vendor pcl-conversions pcl-ros pluginlib point-cloud-interfaces point-cloud-transport rclcpp rclcpp-components rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ "Apache" ];
  };
}
