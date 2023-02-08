
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, librealsense2, nav-msgs, rclcpp, rclcpp-components, realsense-msgs, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-ros";
  version = "2.0.8-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros2_intel_realsense-release";
        rev = "release/foxy/realsense_ros/2.0.8-2";
        sha256 = "sha256-DXPncfDccSbqjXwMtbyHfSTiUS2Cp+Nbt2syGAs90UM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense-msgs sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 RealSense Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
