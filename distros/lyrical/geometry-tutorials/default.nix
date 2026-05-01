
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-geometry-tutorials";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/lyrical/geometry_tutorials/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "5424422086db46c0050bb455b84acf1a807c5ebd239812c39e203cb8422d024a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
