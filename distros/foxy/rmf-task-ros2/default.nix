
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, rclcpp, rmf-cmake-uncrustify, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils }:
buildRosPackage {
  pname = "ros-foxy-rmf-task-ros2";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_ros2-release";
        rev = "release/foxy/rmf_task_ros2/1.4.0-1";
        sha256 = "sha256-U/6hiNKkex/Y5YJL3AOIH9VGJDmH0mwDRfqcbjGP30w=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ rclcpp rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package managing the dispatching of tasks in RMF system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
