
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-msgs, diagnostic-updater, eigen, geographic-msgs, geometry-msgs, launch-ros, launch-testing-ament-cmake, libyamlcpp, nav-msgs, rclcpp, rmw-implementation, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-robot-localization";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/foxy/robot_localization/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "5d4ee836e941dd006a6d799d64ef4fc6edb48fe09dfc769daf6b63a027ef73b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater eigen geographic-msgs geometry-msgs libyamlcpp nav-msgs rclcpp rmw-implementation rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
