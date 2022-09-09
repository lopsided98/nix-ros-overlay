
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-geometry-tutorials";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/galactic/geometry_tutorials/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "023f05748fa0d0f7b3d3862503e7e608f9f75d6240bfa3a716f1766390e3faac";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
