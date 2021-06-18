
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-fanuc-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources_fanuc_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6f083913956f4ee0d31d08ceddc87467ec21350698fdbeb07d29337ade8473f4";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
