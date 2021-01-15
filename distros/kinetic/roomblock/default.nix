
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roomblock-bringup, roomblock-description, roomblock-mapping, roomblock-navigation }:
buildRosPackage {
  pname = "ros-kinetic-roomblock";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "986da8708f4ba12aa333ff28c245ffa999806f6ee68092298ccba12e02a84d93";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roomblock-bringup roomblock-description roomblock-mapping roomblock-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
