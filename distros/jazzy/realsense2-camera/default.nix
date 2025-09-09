
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-pytest, launch-ros, launch-testing, librealsense2, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, realsense2-camera-msgs, ros-environment, ros2topic, sensor-msgs, sensor-msgs-py, std-msgs, std-srvs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-camera";
  version = "4.56.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/jazzy/realsense2_camera/4.56.4-1.tar.gz";
    name = "4.56.4-1.tar.gz";
    sha256 = "d14f01edd1370c0c24eb59d76a4c43ed9071248644daa9583a71919f153b096d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest launch-pytest launch-testing python3Packages.numpy python3Packages.requests python3Packages.tqdm ros2topic sensor-msgs-py tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros librealsense2 lifecycle-msgs nav-msgs rclcpp rclcpp-components rclcpp-lifecycle realsense2-camera-msgs sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense camera package allowing access to Intel D400 3D cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
