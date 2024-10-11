
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, camera-calibration, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, image-pipeline, image-transport, image-transport-plugins, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-driver";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_ros_driver/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "95c2c65f31a6a034e2fb7d5d329b795fc2d0c1d9fcc697ebee54de97aca5bc79";
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
