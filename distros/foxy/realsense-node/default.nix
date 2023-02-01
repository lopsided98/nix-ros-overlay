
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp, realsense-msgs, realsense-ros, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-node";
  version = "2.0.8-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros2_intel_realsense-release";
        rev = "release/foxy/realsense_node/2.0.8-2";
        sha256 = "sha256-Pk52f/R3A+m0pPFKXpiHCe/fkgtN5UWq0sM2VmdjN0U=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp realsense-msgs realsense-ros sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 realsense node'';
    license = with lib.licenses; [ asl20 ];
  };
}
