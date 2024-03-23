
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, boost, builtin-interfaces, diagnostic-msgs, diagnostic-updater, eigen, geographic-msgs, geographiclib, geometry-msgs, launch-ros, launch-testing-ament-cmake, message-filters, nav-msgs, rclcpp, rmw-implementation, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-robot-localization";
  version = "3.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_localization-release/archive/release/rolling/robot_localization/3.6.0-3.tar.gz";
    name = "3.6.0-3.tar.gz";
    sha256 = "9350bce936ff5aac8cbd12b28ebbaa51078d201293c771e0e0f59784e161e5bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ angles boost diagnostic-msgs diagnostic-updater eigen geographic-msgs geographiclib geometry-msgs message-filters nav-msgs rclcpp rmw-implementation rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];

  meta = {
    description = "Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
