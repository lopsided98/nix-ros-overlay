
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-marti-data-structures";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/marti_data_structures/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "7aab9d5f3e0eabddd6876f7a032521a26a9c37a2289808ae6d92e0ce1339f206";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
