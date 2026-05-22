
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geographic-msgs, geometry-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ros";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ros/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "a3a62021b1010835a3c4c90135b8594d3b0f3700c450eb5bd25a53bef9f99629";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geographic-msgs geometry-msgs nav-msgs proj rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 UKF sensor fusion for IMU, wheel encoders, GPS, and visual SLAM pose. 22-state filter with ECEF-native GPS handling, automatic IMU bias estimation, adaptive noise covariance, chi-squared outlier rejection on every sensor, and map reinitialization recovery for GPS-denied operation. Drop-in robot_localization alternative. Native ROS 2 Jazzy, benchmarked on 6 NCLT public dataset sequences.";
    license = with lib.licenses; [ asl20 ];
  };
}
