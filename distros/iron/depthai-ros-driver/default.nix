
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, camera-calibration, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, image-pipeline, image-transport, image-transport-plugins, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-ros-driver";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_ros_driver/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "36a0100078fde11f44f8730c7063fa9abddd4e34e27b26d93522b8e2c2d8ea00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto camera-calibration cv-bridge depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-msgs diagnostic-msgs diagnostic-updater ffmpeg-image-transport-msgs image-pipeline image-transport image-transport-plugins pluginlib rclcpp rclcpp-components sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Depthai ROS Monolithic node.";
    license = with lib.licenses; [ mit ];
  };
}
