
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, backward-ros, camera-calibration, camera-info-manager, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, geometry-msgs, image-pipeline, image-transport, image-transport-plugins, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-depthai-ros-driver";
  version = "3.0.9-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/kilted/depthai_ros_driver/3.0.9-1.tar.gz";
    name = "3.0.9-1.tar.gz";
    sha256 = "0f67f3572fdbfa4c73ff61a0d563bad0d5abee7e6c84794afccd0e94d3e83ac8";
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
