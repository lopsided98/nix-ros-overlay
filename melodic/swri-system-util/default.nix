
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-system-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_system_util/2.8.0-0.tar.gz;
    sha256 = "446a55bae83886fef1ed64d134a9b15b533d74583c15c6e2b2eb321b1cccf5b6";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin roscpp ];

  meta = {
    description = ''swri_system_util'';
    #license = lib.licenses.BSD;
  };
}
