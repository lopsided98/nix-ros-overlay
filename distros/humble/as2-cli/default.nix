
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "c05a8b768197c2b6becb6665c002aabe37dbe812f96027873565aed8f78fe21a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 CLI Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
