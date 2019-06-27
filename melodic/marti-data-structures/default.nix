
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-marti-data-structures";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/marti_data_structures/2.9.0-1.tar.gz;
    sha256 = "cb65a4980169161606767101cdfd1fe51a4c0b7cb6e508a6df459c5476b5063a";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
