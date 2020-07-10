
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "f3feecd5f6023049ff48a56ae3a6f0a3e0831f64853cfa16a6396aa6f4364805";
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
