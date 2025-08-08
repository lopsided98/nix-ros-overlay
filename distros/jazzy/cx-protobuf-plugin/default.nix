
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, protobuf, protobuf-comm, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-cx-protobuf-plugin";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_protobuf_plugin/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "4a13bee8e3d1f9a9ad9e1f30c8fe46699c5ad384d3337b6243cab2774d108b28";
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
