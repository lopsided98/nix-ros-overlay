
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rclcpp-components, rmf-battery, rmf-cmake-uncrustify, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-fleet-adapter";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_fleet_adapter/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "c15b17b3d57530c489a3731d299356819ef6bbe3deb6b17174545d743e810e1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen libyamlcpp ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmf-battery rmf-dispenser-msgs rmf-door-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-task rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fleet Adapter package for RMF fleets.'';
    license = with lib.licenses; [ asl20 ];
  };
}
