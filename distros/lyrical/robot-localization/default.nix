
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, boost, builtin-interfaces, diagnostic-msgs, diagnostic-updater, eigen, geographic-msgs, geographiclib, geometry-msgs, launch-ros, launch-testing-ament-cmake, message-filters, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-robot-localization";
  version = "3.10.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_localization-release/archive/release/lyrical/robot_localization/3.10.0-4.tar.gz";
    name = "3.10.0-4.tar.gz";
    sha256 = "efe6d43ac79e1cba00bfd091f4be9f64b410e5ec387168e141df17e27fd0d9f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ angles boost builtin-interfaces diagnostic-msgs diagnostic-updater eigen geographic-msgs geographiclib geometry-msgs message-filters nav-msgs rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];

  meta = {
    description = "Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
