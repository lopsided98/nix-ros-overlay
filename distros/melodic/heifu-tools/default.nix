
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-view, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-melodic-heifu-tools";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_tools/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "0782141a5fd40de570fbcc7bf4b3a4d45280f7748c9843fa662a9abcfde89e70";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-view joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu Tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
