
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-geometry-tutorials";
  version = "0.3.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/geometry_tutorials/0.3.6-4.tar.gz";
    name = "0.3.6-4.tar.gz";
    sha256 = "0a13b606f87ab55ccd622891bf038784189f86a808e74800b96e6a47c0d16a74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
