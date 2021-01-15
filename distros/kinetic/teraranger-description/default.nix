
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-teraranger-description";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/Terabee/teraranger_description-release/archive/release/kinetic/teraranger_description/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "db2a7ae592d188ca4db38d21309cb1d92e5994604cd678dba8a25188eecb66bb";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teraranger_description package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
