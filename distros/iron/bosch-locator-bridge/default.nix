
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, pcl-conversions, poco, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-bosch-locator-bridge";
  version = "2.1.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/iron/bosch_locator_bridge/2.1.9-3.tar.gz";
    name = "2.1.9-3.tar.gz";
    sha256 = "e4df3abde90c60ea36e6bf891883d6e92613a8c6d4fac51c54289c4bfa258c5b";
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
