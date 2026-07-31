
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geographic-msgs, geometry-msgs, gps-msgs, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, robot-localization, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-ros";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_ros/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "0c97c9199b3b89cd3bdb944b3c8141255f5a7ce7c021aa239a3a2a47d9039121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geographic-msgs geometry-msgs gps-msgs lifecycle-msgs nav-msgs proj rclcpp rclcpp-lifecycle robot-localization rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "ROS 2 UKF sensor fusion for IMU, wheel encoders, GPS, and visual SLAM pose. 23-state filter with ECEF-native GPS handling, online gyro/accel/encoder bias estimation, adaptive noise covariance, chi-squared outlier rejection on every sensor, and map reinitialization recovery for GPS-denied operation. Drop-in robot_localization alternative. Benchmarked on 12 full-length NCLT sequences: wins 10 of 12 vs robot_localization EKF.";
    license = with lib.licenses; [ asl20 ];
  };
}
