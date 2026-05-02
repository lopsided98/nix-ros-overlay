
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, protobuf, protobuf-comm, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-cx-protobuf-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_protobuf_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "f3e4e67c4316a7087385dcacf47bebd72b2c780c42c95f1c43f8298d085f6b33";
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
