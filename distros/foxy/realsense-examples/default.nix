
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, librealsense2, rclcpp, rclcpp-components, realsense-msgs, realsense-node, realsense-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-examples";
  version = "2.0.8-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros2_intel_realsense-release";
        rev = "release/foxy/realsense_examples/2.0.8-2";
        sha256 = "sha256-SwkeUGciJkH9Ig8kmMl3xL0v0OVmJxTwTSFPFV5AG9A=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros librealsense2 rclcpp rclcpp-components realsense-msgs realsense-node realsense-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 RealSense Package Exampless'';
    license = with lib.licenses; [ asl20 ];
  };
}
