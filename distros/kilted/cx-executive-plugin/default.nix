
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-cx-executive-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_executive_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b267d0248674be6f85f55d43f97dbe30ae81e1ed17abd55c4e82feb1b2fef477";
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
