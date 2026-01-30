
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros, cras-cpp-common, cras-lint, eigen, message-filters, pluginlib, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs, std-srvs, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-magnetometer-pipeline";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/magnetometer_pipeline/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "3b9c3db7675f63801ea603392267363760d3ec2d5e36feed42ce33c25a6872ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python eigen ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common message-filters pluginlib python3Packages.numpy rclcpp rclcpp-components rclpy sensor-msgs std-msgs std-srvs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Calibration and removing of magnetometer bias.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
