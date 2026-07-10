
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geographic-msgs, geometry-msgs, gps-msgs, lifecycle-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ros";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ros/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "bfd125176d9e6c8990985ede938ff2887a785f22ba6cbece993d50d1a1ff0e0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geographic-msgs geometry-msgs gps-msgs lifecycle-msgs nav-msgs proj rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "ROS 2 UKF sensor fusion for IMU, wheel encoders, GPS, and visual SLAM pose. 23-state filter with ECEF-native GPS handling, online gyro/accel/encoder bias estimation, adaptive noise covariance, chi-squared outlier rejection on every sensor, and map reinitialization recovery for GPS-denied operation. Drop-in robot_localization alternative. Benchmarked on 12 full-length NCLT sequences: wins 10 of 12 vs robot_localization EKF.";
    license = with lib.licenses; [ asl20 ];
  };
}
