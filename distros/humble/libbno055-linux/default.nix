
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, geometry-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-libbno055-linux";
  version = "1.9.0-r3";

  src = fetchurl {
    url = "https://github.com/lazytatzv/libbno055_linux-release/archive/release/humble/libbno055_linux/1.9.0-3.tar.gz";
    name = "1.9.0-3.tar.gz";
    sha256 = "8d8c8d1da6b6a0c47efed05070de3b5788470f98eb5f41641cabb417525014de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++17 driver and ROS 2 nodes for the Bosch BNO055 9-axis IMU on Linux, with Python, C, and Rust bindings.";
    license = with lib.licenses; [ mit ];
  };
}
