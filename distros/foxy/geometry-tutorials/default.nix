
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-geometry-tutorials";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/foxy/geometry_tutorials/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "ba686ba4ecd384f5245bb12a59bd1c34ce9b07ba3c7c583c0f478538ea6cce2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
