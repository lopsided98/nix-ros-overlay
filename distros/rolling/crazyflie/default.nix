
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, crazyflie-description, crazyflie-interfaces, crazyflie-server-cpp, eigen, geometry-msgs, rclcpp, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-crazyflie";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/rolling/crazyflie/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "cc30f9997d96360d2106f2767d19e6b5f86bde0ffe6999caf222158b4ed8c118";
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
