
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-cx-ament-index-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_ament_index_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "59093da60fe1c96b322ded214b411e6a331132057761be16c75e696b2b936afa";
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
