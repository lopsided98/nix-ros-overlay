
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-marti-data-structures";
  version = "2.13.6-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/marti_data_structures/2.13.6-1.tar.gz";
    name = "2.13.6-1.tar.gz";
    sha256 = "e5d5a916ac0a41c5e0273f06794cc02b9504087babbc8013ce5c03a3cf74eaad";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
