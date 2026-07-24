
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, geometry-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-libbno055-linux";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/lazytatzv/libbno055_linux-release/archive/release/lyrical/libbno055_linux/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "3c7d30e9330010d95c22d5aa73d36e599e826f87a38f99674e2dc9341e64fa45";
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
