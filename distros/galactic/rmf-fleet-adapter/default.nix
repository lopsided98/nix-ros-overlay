
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rclcpp-components, rmf-battery, rmf-cmake-uncrustify, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-fleet-adapter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/galactic/rmf_fleet_adapter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "806cc079e4e866ab2ec957feb8055d16246c5b202f7db582c62ad7292fb4f6c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen libyamlcpp ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmf-battery rmf-dispenser-msgs rmf-door-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-task rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fleet Adapter package for RMF fleets.'';
    license = with lib.licenses; [ asl20 ];
  };
}
