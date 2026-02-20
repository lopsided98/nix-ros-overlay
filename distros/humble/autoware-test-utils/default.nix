
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-pyplot, autoware-utils-geometry, lanelet2-io, nav-msgs, rclcpp, std-srvs, tf2-msgs, tf2-ros, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-autoware-test-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_test_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "c27d7b0cee0951fa007714d98b3885920928c95fac75995e97c3dbba29bc9e2a";
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
