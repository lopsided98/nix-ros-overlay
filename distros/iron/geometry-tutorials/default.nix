
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-geometry-tutorials";
  version = "0.3.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/iron/geometry_tutorials/0.3.6-4.tar.gz";
    name = "0.3.6-4.tar.gz";
    sha256 = "7bd0f0b3f043d76c5cbed1c8a49f519c7f4a05530688591bdd2c5106b9db4b66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
