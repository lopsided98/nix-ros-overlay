
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros, cras-cpp-common, cras-lint, eigen, message-filters, pluginlib, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs, std-srvs, tf2-eigen }:
buildRosPackage {
  pname = "ros-lyrical-magnetometer-pipeline";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/magnetometer_pipeline/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "8fcc6d75c51953da66c172c6f7e911e4d981d13ec57b0b4a972582a61aec3503";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python eigen ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common message-filters pluginlib python3Packages.numpy rclcpp rclcpp-components rclpy sensor-msgs std-msgs std-srvs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Calibration and removing of magnetometer bias.";
    license = with lib.licenses; [ bsd3 ];
  };
}
