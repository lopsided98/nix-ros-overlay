
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-geometry-tutorials";
  version = "0.3.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/humble/geometry_tutorials/0.3.4-3.tar.gz";
    name = "0.3.4-3.tar.gz";
    sha256 = "ae5ff25e002dadcb5badf30401776a27e749c2b11ca696c4fad560dc6a7b1662";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
