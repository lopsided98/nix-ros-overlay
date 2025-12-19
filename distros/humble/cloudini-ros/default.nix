
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, mcap-vendor, pcl-conversions, pcl-ros, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-cloudini-ros";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_ros/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "faf537082959b6fd8510bc639b58c8bbb2f895a681a32196883600b3bdc34b2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cloudini-lib mcap-vendor pcl-conversions pcl-ros pluginlib point-cloud-interfaces point-cloud-transport rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ "Apache" ];
  };
}
