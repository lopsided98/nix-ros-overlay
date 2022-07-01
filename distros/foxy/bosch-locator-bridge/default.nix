
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, pcl-conversions, poco, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-bosch-locator-bridge";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/foxy/bosch_locator_bridge/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "9e6f267e4f89e4a3a14f4a4bc7b88dbfe9acb31ee089d5de3258b3b063a3ef2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml nav-msgs pcl-conversions poco rclcpp rosidl-default-runtime sensor-msgs std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interface to Rexroth ROKIT Locator'';
    license = with lib.licenses; [ asl20 ];
  };
}
