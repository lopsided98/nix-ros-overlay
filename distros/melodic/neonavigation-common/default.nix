
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-common";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation_common/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "98a3010401fd8946e6a9b37c7b7bf7d3220f9e68641bb3c0abb55c10f3a784fb";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
