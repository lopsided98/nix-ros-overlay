
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-cx-config-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_config_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "5a943d85ffef28191db0fbc8d82e6aacba443ba162a490dc342e3da6bf7a522f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp clips-vendor cx-plugin cx-utils pluginlib yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CX plugin to parse yaml files and provide the values to CLIPS";
    license = with lib.licenses; [ asl20 ];
  };
}
