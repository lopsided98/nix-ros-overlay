
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, pcl-conversions, poco, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-bosch-locator-bridge";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/foxy/bosch_locator_bridge/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "588323f3c1fda3430d1c31efcda9a121a2f37946e842d38d1232065647fe2436";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml nav-msgs pcl-conversions poco rclcpp rosidl-default-runtime std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interface to Rexroth ROKIT Locator'';
    license = with lib.licenses; [ asl20 ];
  };
}
