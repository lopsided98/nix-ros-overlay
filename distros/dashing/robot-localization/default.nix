
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, diagnostic-updater, eigen, geographic-msgs, geometry-msgs, launch-ros, launch-testing-ament-cmake, libyamlcpp, nav-msgs, rclcpp, rmw-implementation, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-robot-localization";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/dashing/robot_localization/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "a6f38b7b1f2dad61db87b55d50b3e372552e4403b4d2aeba03ec05568dcd37ba";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common builtin-interfaces launch-testing-ament-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eigen geographic-msgs geometry-msgs launch-ros libyamlcpp nav-msgs rclcpp rmw-implementation rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
