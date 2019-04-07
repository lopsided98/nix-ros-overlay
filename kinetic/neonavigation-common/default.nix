
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.3.1-0.tar.gz;
    sha256 = "f87ea14a6ce7931769a427b07f8e1c5cef6218dc1484d53b81bdc1e460f2552a";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    #license = lib.licenses.BSD;
  };
}
