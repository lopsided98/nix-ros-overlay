
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-fanuc-description";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources_fanuc_description/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "028987a544066bd3cfa1914db531bf001967299e8ff08a85d79b553c1e5a2173";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
