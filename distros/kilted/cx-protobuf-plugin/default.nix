
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, protobuf, protobuf-comm, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-cx-protobuf-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_protobuf_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "6329180c3d59665646250d054cde994e74016b5a75ad7d95e3edc93b41bfb951";
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
