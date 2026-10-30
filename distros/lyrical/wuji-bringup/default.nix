
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclpy, robot-state-publisher, ros2launch, rviz2, sensor-msgs, tf2-msgs, wuji-glove-driver, wuji-hand2-1-description, wuji-hand2-2-description, wuji-hand2-driver, wuji-msgs }:
buildRosPackage {
  pname = "ros-lyrical-wuji-bringup";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_bringup/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "1b85ac43e7aa5902561d4fa2f25bc4f1dbd1a0f612cb113eb3e3c781ffe52574";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros rclpy ros2launch sensor-msgs tf2-msgs ];
  propagatedBuildInputs = [ launch launch-ros rclpy robot-state-publisher rviz2 sensor-msgs wuji-glove-driver wuji-hand2-1-description wuji-hand2-2-description wuji-hand2-driver wuji-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch integration for Wuji ROS 2 drivers and robot descriptions.";
    license = with lib.licenses; [ mit ];
  };
}
