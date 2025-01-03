
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-geometry-tutorials";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/geometry_tutorials/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "c5b615750fa5a08bdbc0d908a4d3361f99da7d9554244e4342ab47a8b970eb41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
