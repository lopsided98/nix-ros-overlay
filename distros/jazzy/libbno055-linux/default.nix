
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, cmake, diagnostic-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-libbno055-linux";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/lazytatzv/libbno055_linux-release/archive/release/jazzy/libbno055_linux/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "eca1040de46ff810e53a5d458ae21fb62dece3001c1c0fbc5f65f7728be9d5bf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++17 BNO055 library and ROS 2 nodes for Linux.";
    license = with lib.licenses; [ mit ];
  };
}
