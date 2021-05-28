
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-msgs, diagnostic-updater, eigen, geographic-msgs, geographiclib, geometry-msgs, launch-ros, launch-testing-ament-cmake, message-filters, nav-msgs, rclcpp, rmw-implementation, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-robot-localization";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/galactic/robot_localization/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "4e0adb25674ae953b1fe5dc271a0e2700633d83f9ffaeda07e906f187a0faba6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common builtin-interfaces launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater eigen geographic-msgs geographiclib geometry-msgs message-filters nav-msgs rclcpp rmw-implementation rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
