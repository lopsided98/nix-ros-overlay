
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-pytest, launch-ros, launch-testing, librealsense2, nav-msgs, python3Packages, rclcpp, rclcpp-components, realsense2-camera-msgs, ros-environment, ros2topic, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-realsense2-camera";
  version = "4.55.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/iron/realsense2_camera/4.55.1-1.tar.gz";
    name = "4.55.1-1.tar.gz";
    sha256 = "14da1e90d2c9ec966b68481857defffaaa2d71f9f4c88e06f5b934a527e89ac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest launch-pytest launch-testing python3Packages.numpy python3Packages.requests python3Packages.tqdm ros2topic sensor-msgs-py tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense2-camera-msgs sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense camera package allowing access to Intel D400 3D cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
