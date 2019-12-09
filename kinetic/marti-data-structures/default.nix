
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-marti-data-structures";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/marti_data_structures/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "f068376c3859d5d0816b310a090552633594593103026a4c2f02d83c0a97dd59";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
