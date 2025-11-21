
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, backward-ros, camera-calibration, camera-info-manager, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, geometry-msgs, image-pipeline, image-transport, image-transport-plugins, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-depthai-ros-driver";
  version = "3.0.10-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/kilted/depthai_ros_driver/3.0.10-1.tar.gz";
    name = "3.0.10-1.tar.gz";
    sha256 = "8042abe1999d8066e24f5e72ea5227ff727fba2d179e25a73d7e53ae0dbaa0a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto backward-ros camera-calibration camera-info-manager cv-bridge depthai depthai-bridge depthai-descriptions depthai-ros-msgs diagnostic-msgs diagnostic-updater ffmpeg-image-transport-msgs geometry-msgs image-pipeline image-transport image-transport-plugins nav-msgs pluginlib rclcpp rclcpp-components sensor-msgs std-msgs std-srvs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Depthai ROS Monolithic node.";
    license = with lib.licenses; [ mit ];
  };
}
