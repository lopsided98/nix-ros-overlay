
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-cx-file-load-plugin";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_file_load_plugin/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "70803a7f8b8eaea660c20918dbeb88d59ed4207be8bbd5f8454f2389e1719446";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin that can load CLIPS code via load* and batch*";
    license = with lib.licenses; [ asl20 ];
  };
}
