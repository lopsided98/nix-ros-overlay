
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, boost, crazyflie-description, crazyflie-interfaces, eigen, geometry-msgs, libusb1, motion-capture-tracking-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "89f2ea435de0cc33de6789de628e686720c36d56ba14f442cbb5655ae71a75e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost crazyflie-description crazyflie-interfaces eigen geometry-msgs libusb1 motion-capture-tracking-interfaces nav-msgs rclcpp ros-environment sensor-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 Package for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
