
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-system-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_system_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "0190c13b867e91c96bbacd6f1b09595e672dcc232baadf7e63858084a2693ed7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_system_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
