
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-geometry-tutorials";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/foxy/geometry_tutorials/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "5a29ad0953292cb6a4c228f73bf492e603a757eeedc464c328ef8e0e235368fb";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
