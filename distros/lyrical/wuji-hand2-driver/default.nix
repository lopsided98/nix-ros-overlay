
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, nlohmann_json, python3Packages, rclcpp, sensor-msgs, std-msgs, std-srvs, wuji-msgs, wuji-sdk-vendor }:
buildRosPackage {
  pname = "ros-lyrical-wuji-hand2-driver";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_hand2_driver/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "5d79c46513a1a4e9fecaaa2e957f8cf837f1ead584139562006fa0d171551c35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ nlohmann_json rclcpp sensor-msgs std-msgs std-srvs wuji-msgs wuji-sdk-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 driver for Wuji Hand 2.";
    license = with lib.licenses; [ mit ];
  };
}
