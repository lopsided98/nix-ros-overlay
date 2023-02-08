
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rclcpp-components, rmf-battery, rmf-cmake-uncrustify, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-fleet-adapter";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_ros2-release";
        rev = "release/foxy/rmf_fleet_adapter/1.4.0-1";
        sha256 = "sha256-rJiBXIiOhjSc3ZruX4Zq8QVgF7LzhEYkAMYH9XnxDXQ=";
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
