
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-geometry-tutorials";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/jazzy/geometry_tutorials/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "aa212c83894de3d71b7b991c2f7443990b87301ba0087b0ce0f945f2cafb84f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
