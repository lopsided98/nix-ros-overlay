
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, crazyflie-interfaces, geometry-msgs, motion-capture-tracking-interfaces, rclcpp, sensor-msgs, std-srvs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "61defd10515a420ef81a630d5b4bf3a3411fa51a75fc8cf9753dd203f1e0079d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crazyflie-interfaces geometry-msgs motion-capture-tracking-interfaces rclcpp sensor-msgs std-srvs tf-transformations tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 Package for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
