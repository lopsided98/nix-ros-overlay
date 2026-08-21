
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, crazyflie-interfaces, eigen, geometry-msgs, libusb1, motion-capture-tracking-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-server-cpp";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_server_cpp/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "0c4495d5a997ff0781ad7713eee462ac0dc9ea63f4bf8a71ff2daf43fd10c3c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost crazyflie-interfaces eigen geometry-msgs libusb1 motion-capture-tracking-interfaces nav-msgs rclcpp ros-environment sensor-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 server node for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
