
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, crazyflie-description, crazyflie-interfaces, crazyflie-server-cpp, eigen, geometry-msgs, rclcpp, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-crazyflie";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/lyrical/crazyflie/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "b90d5f1c38d33dd49edaccfe62f60f86be08579933c5258a1c068e07d181002f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crazyflie-description crazyflie-interfaces crazyflie-server-cpp eigen geometry-msgs rclcpp rclpy sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 Package for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
