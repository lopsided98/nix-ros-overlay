
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-swri-system-util";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_system_util/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "0f1f0e29e0d5eb2ca4489d20e369476b23441be8b92b9dee66fc9537a18a9385";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
