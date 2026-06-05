
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geographic-msgs, geometry-msgs, gps-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-ros";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_ros/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b2e76fffe72edf971ac339ebb090fd164da1950a05e509304968daeb2ec4e192";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geographic-msgs geometry-msgs gps-msgs nav-msgs proj rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 UKF sensor fusion for IMU, wheel encoders, GPS, and visual SLAM pose. 23-state filter with ECEF-native GPS handling, online gyro/accel/encoder bias estimation, adaptive noise covariance, chi-squared outlier rejection on every sensor, and map reinitialization recovery for GPS-denied operation. Drop-in robot_localization alternative. Benchmarked on 12 full-length NCLT sequences: wins 10 of 12 vs robot_localization EKF.";
    license = with lib.licenses; [ asl20 ];
  };
}
