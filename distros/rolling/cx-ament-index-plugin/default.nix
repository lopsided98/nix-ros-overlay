
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-cx-ament-index-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_ament_index_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "e0e85c2965b5b9de2218eb2e064e50797e77065ece89216acadb314b5ee93584";
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
