
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, eigen, geometry-msgs, libusb1, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-crazyflie";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/as2_platform_crazyfile-release/archive/release/humble/as2_platform_crazyflie/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "0ebe35daa2adab1b77f6d917ed38876763762d95fe0b9193e7f1d58fb6643715";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs eigen geometry-msgs libusb1 nav-msgs rclcpp rclpy sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Package to communicate Crazyflie drones with Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
