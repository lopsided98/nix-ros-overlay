
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-python, backward-ros, camera-calibration, camera-info-manager, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, geometry-msgs, image-pipeline, image-transport, image-transport-plugins, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-depthai-ros-driver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/kilted/depthai_ros_driver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "be1b85f6781b768d45db33c7d2e259865e21438f04168ea9c982c0d9f0916196";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-auto backward-ros camera-calibration camera-info-manager cv-bridge depthai depthai-bridge depthai-descriptions depthai-ros-msgs diagnostic-msgs diagnostic-updater ffmpeg-image-transport-msgs geometry-msgs image-pipeline image-transport image-transport-plugins nav-msgs pluginlib rclcpp rclcpp-components sensor-msgs std-msgs std-srvs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Depthai ROS Monolithic node.";
    license = with lib.licenses; [ mit ];
  };
}
