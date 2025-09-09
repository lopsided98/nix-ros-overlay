
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, protobuf, protobuf-comm, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-cx-protobuf-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_protobuf_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "42f9ef45828cc42af73ca40e7544eda2fd3a2ff827751065a961d9df3a2d8899";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cx-plugin cx-utils pluginlib protobuf protobuf-comm python3Packages.jinja2 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CX plugin to send and receive protobuf messages";
    license = with lib.licenses; [ "GPL-2.0-or-later" ];
  };
}
