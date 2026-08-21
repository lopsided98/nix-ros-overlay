
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, crazyflie-interfaces, eigen, geometry-msgs, libusb1, motion-capture-tracking-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-crazyflie-server-cpp";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie_server_cpp/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "1d9eb21ca4b9df6bac60e6db7c0c1696b31dd12243b02a524ce6ab360fc23762";
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
