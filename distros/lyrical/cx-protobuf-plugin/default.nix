
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, protobuf, protobuf-comm, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-cx-protobuf-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_protobuf_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "54695269f23519f267d1713fb9c21e9d8fbc773071d92d368bbd8e7dba2d7349";
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
