
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources-panda-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources_panda_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bf684593e26721a573ddf7a68fbbe6f59b8e5fc6fe9badbb907ac1cf41c097c3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''panda Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
