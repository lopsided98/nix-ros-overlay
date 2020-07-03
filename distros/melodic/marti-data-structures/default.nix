
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-marti-data-structures";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/marti_data_structures/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "e27860dddee53b9e385be3b5a67b64bfc18f5b154cdfc4bd73b98a32436db3a5";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
