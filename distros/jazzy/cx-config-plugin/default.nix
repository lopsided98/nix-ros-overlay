
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-cx-config-plugin";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_config_plugin/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "c965057c86d744c75a229bf7c65055197925636e60cdb59b2977beb2f80e71ec";
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
