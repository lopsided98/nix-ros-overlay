
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-python, backward-ros, camera-calibration, camera-info-manager, cv-bridge, depthai-bridge-v3, depthai-descriptions-v3, depthai-ros-msgs-v3, depthai-v3, diagnostic-msgs, diagnostic-updater, ffmpeg-image-transport-msgs, geometry-msgs, image-pipeline, image-transport, image-transport-plugins, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-driver-v3";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_ros_driver_v3/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "e75c442015d517dcf3487737baaae7847f4bed03c0b3e0dc7d1dbc28868845de";
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
