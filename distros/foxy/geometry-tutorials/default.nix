
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-geometry-tutorials";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/foxy/geometry_tutorials/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "cdc7c3cc9a32f805b6a871f001e9fa925cc01f11186d3a7e6370dcfe16ef71cd";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
