
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-marti-data-structures";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/marti_data_structures/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "a67b17e049c3821463e666259f06639b15a73ee12e6a5e9aa1c477b9dfad4333";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
