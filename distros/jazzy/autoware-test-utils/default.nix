
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-pyplot, autoware-utils-geometry, lanelet2-io, nav-msgs, rclcpp, std-srvs, tf2-msgs, tf2-ros, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-autoware-test-utils";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_test_utils/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "68c1f7ebc68e5a887e1c46d2bf39d77c426521273ac446a8f856f4754eb1d584";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-pyplot ];
  propagatedBuildInputs = [ ament-index-cpp autoware-adapi-v1-msgs autoware-internal-planning-msgs autoware-lanelet2-extension autoware-map-msgs autoware-perception-msgs autoware-planning-msgs autoware-utils-geometry lanelet2-io nav-msgs rclcpp std-srvs tf2-msgs tf2-ros unique-identifier-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for testing interface of the nodes in planning module";
    license = with lib.licenses; [ asl20 ];
  };
}
