
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-marti-data-structures";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/marti_data_structures/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "0b7896ecc220b8934e20e4c8060cead2520fb9e83f16dc8d6c08151fc098ccce";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
