
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, pcl-conversions, poco, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-bosch-locator-bridge";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/rolling/bosch_locator_bridge/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "8d1ce8bbc88a4bb7351f7115a898c62d508335ee0939924ceac016a2ef60dfe4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml nav-msgs pcl-conversions poco rclcpp rosidl-default-runtime sensor-msgs std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interface to Rexroth ROKIT Locator'';
    license = with lib.licenses; [ asl20 ];
  };
}
