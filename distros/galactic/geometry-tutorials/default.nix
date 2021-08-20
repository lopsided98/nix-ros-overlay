
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-geometry-tutorials";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/galactic/geometry_tutorials/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "007f0ead432be1cb14ddd0ea64ecfc72629878f12ecdbda14566749d5b6366e5";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
