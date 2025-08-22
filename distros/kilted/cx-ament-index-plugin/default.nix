
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-cx-ament-index-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_ament_index_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "33ec54030d3d90ebf969b219c59adfc5d3ca960683977cf86c0b3d0c44da7841";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp clips-vendor cx-plugin cx-utils pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin for accessing ament_index via ament_index_cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
