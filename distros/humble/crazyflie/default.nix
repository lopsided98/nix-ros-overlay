
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, boost, crazyflie-interfaces, eigen, geometry-msgs, libusb1, motion-capture-tracking-interfaces, rclcpp, ros-environment, sensor-msgs, std-srvs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-crazyflie";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ea2ade526fb77767d6f814f1a61255dd56a3040671e6cd8adc8a1a54cd0c40fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost crazyflie-interfaces eigen geometry-msgs libusb1 motion-capture-tracking-interfaces rclcpp ros-environment sensor-msgs std-srvs tf-transformations tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 Package for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
