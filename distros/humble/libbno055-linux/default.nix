
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, geometry-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-libbno055-linux";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/lazytatzv/libbno055_linux-release/archive/release/humble/libbno055_linux/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "37ac75c2d80116c85516f05d64e11db31f2312d16da4d0c15441df6f5f2c9d7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++17 driver and ROS 2 nodes for the Bosch BNO055 9-axis IMU on Linux, with Python, C, and Rust bindings.";
    license = with lib.licenses; [ mit ];
  };
}
