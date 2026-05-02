
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-cx-executive-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_executive_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "e781da7628f18e4e754c693901427bb6b0701b74cfd4b24f6a414599a19b4f05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils pluginlib rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin to continuously refresh agendas and run CLIPS environments";
    license = with lib.licenses; [ "GPLv2-license" ];
  };
}
