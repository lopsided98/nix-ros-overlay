
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, clips-vendor, cx-plugin, cx-utils, pluginlib }:
buildRosPackage {
  pname = "ros-lyrical-cx-ament-index-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_ament_index_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "ae42612674a3c38b4ee1584ac957bbb6aa97d9b17da5ab1694d054b960ccf0ef";
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
