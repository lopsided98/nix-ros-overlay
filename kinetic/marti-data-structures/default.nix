
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-marti-data-structures";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/marti_data_structures/2.8.0-0.tar.gz;
    sha256 = "c5aea567d95ab2a13d941049aa6cc95bbb81fa626f33fa46061071fe7d68d9f8";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    #license = lib.licenses.BSD;
  };
}
