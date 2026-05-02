
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geographic-msgs, geometry-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-ros";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_ros/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3b6572febd6ccd145972652cfa7492489a0d6f1abf7473f487475303bdb8e6cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geographic-msgs geometry-msgs nav-msgs proj rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 UKF sensor fusion for GPS, IMU and wheel encoders. 22-state filter with ECEF-native GPS handling, automatic IMU bias estimation, adaptive noise covariance, and chi-squared outlier rejection on every sensor. Drop-in robot_localization alternative. Native ROS 2 Jazzy, benchmarked on 6 NCLT public dataset sequences.";
    license = with lib.licenses; [ asl20 ];
  };
}
