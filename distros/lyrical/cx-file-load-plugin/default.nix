
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-cx-file-load-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_file_load_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "c987b9681102e6371373ad2d15219dabce8e916b9bb4ffdc74dae961fcf99957";
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
