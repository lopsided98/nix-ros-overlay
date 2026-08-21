
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, crazyflie-description, crazyflie-interfaces, crazyflie-server-cpp, eigen, geometry-msgs, rclcpp, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "24d21ee2cb18dfb7403aa2415b448f4a9e53f926da2c05032f290071e1d266d0";
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
