
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, std-msgs, wuji-msgs, wuji-sdk-vendor }:
buildRosPackage {
  pname = "ros-lyrical-wuji-glove-driver";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_glove_driver/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "994b87df6f3fc31e0187ab7bbaa5b45562de29db90f03ede6dd9e39d244a68a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs std-msgs wuji-msgs wuji-sdk-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 driver for Wuji Glove.";
    license = with lib.licenses; [ mit ];
  };
}
