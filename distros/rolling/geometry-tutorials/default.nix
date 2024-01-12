
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-geometry-tutorials";
  version = "0.3.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/geometry_tutorials/0.3.6-3.tar.gz";
    name = "0.3.6-3.tar.gz";
    sha256 = "8e9db0efd24fa8eb16d01f09195a23471bbea0d798e092d098966d06a658ca80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
