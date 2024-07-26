
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-geometry-tutorials";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/geometry_tutorials/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "fe33c88e6b603590b6b7c518c6a9064b882710e713e11aaa8237b38c090838ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
