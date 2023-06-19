
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, libusb1, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-crazyflie";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_crazyflie/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "7bc0f7327404441cc35abd78b6ba4f8722db393a1e0819211319a8da0256fc32";
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
