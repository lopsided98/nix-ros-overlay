
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-pytest, launch-ros, launch-testing, librealsense2, nav-msgs, python3Packages, rclcpp, rclcpp-components, realsense2-camera-msgs, ros-environment, ros2topic, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-camera";
  version = "4.55.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/jazzy/realsense2_camera/4.55.1-2.tar.gz";
    name = "4.55.1-2.tar.gz";
    sha256 = "4e045d96b8ba33c216cf78633da2fa055f79d1b27ca23884d69ac3c90f130323";
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
