
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-cx-config-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_config_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "54703a6963fb7f078eb05d8d942084bd8f568e5ae6274143e16de0215da9bf51";
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
