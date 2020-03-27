
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-marti-data-structures";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/marti_data_structures/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "3f98a7edbb002fa2ebe98b1576f36fd45fffc971014471ba5d2cd7b7fa3beb12";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
