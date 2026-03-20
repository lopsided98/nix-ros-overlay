
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-python, backward-ros, camera-calibration, camera-info-manager, cv-bridge, depthai-bridge-v3, depthai-descriptions-v3, depthai-ros-msgs-v3, depthai-v3, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, geometry-msgs, image-pipeline, image-transport, image-transport-plugins, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-driver-v3";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_ros_driver_v3/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "7529c1199c0b1f686c340c59a9583cf6096b5c17a5ecf4e8a7e573f89594de3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-auto backward-ros camera-calibration camera-info-manager cv-bridge depthai-bridge-v3 depthai-descriptions-v3 depthai-ros-msgs-v3 depthai-v3 diagnostic-msgs diagnostic-updater ffmpeg-image-transport-msgs geometry-msgs image-pipeline image-transport image-transport-plugins nav-msgs pluginlib rclcpp rclcpp-components sensor-msgs std-msgs std-srvs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Depthai ROS Monolithic node.";
    license = with lib.licenses; [ mit ];
  };
}
