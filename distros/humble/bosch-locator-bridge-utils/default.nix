
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-util, pcl-conversions, rclcpp, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-bosch-locator-bridge-utils";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/humble/bosch_locator_bridge_utils/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "880c1f26656db3ca1396cd020b4ac52a7beed610747704df3dc50dace536869d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-common nav2-util pcl-conversions rclcpp std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities to use bosch_locator_bridge with Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}
