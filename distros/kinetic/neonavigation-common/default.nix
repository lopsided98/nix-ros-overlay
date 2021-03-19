
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.10.10-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.10.10-1.tar.gz";
    name = "0.10.10-1.tar.gz";
    sha256 = "0cba619c02d3b51a3eee5b1394b1967e8cbafdd6e255e7998f7510c7a71145f5";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest std-msgs std-srvs ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
