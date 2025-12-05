
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cloudini-lib, mcap-vendor, pcl-conversions, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-cloudini-ros";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_ros/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "c2322d956b42b56b46d06b0491556a461f88271805f454fec06ffcfdcac3b0a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cloudini-lib mcap-vendor pcl-conversions pluginlib point-cloud-interfaces point-cloud-transport rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ "Apache" ];
  };
}
