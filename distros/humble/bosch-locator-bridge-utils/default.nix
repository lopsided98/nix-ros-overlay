
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-util, pcl-conversions, rclcpp, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-bosch-locator-bridge-utils";
  version = "2.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/humble/bosch_locator_bridge_utils/2.1.11-1.tar.gz";
    name = "2.1.11-1.tar.gz";
    sha256 = "45748b88c6e1ce9548c50dc77d3f8c8c13f2f6f7a0e742be23b023f781be76b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-util pcl-conversions rclcpp std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities to use bosch_locator_bridge with Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}
