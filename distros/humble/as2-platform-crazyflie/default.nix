
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, libusb1, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-crazyflie";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_crazyflie/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "1aefef5519b863fb6a29b8398ee441bbd06a9806da68a842cbf8712a9e0994fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-msgs eigen geometry-msgs libusb1 nav-msgs rclcpp rclpy sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Package to communicate Crazyflie drones with Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
