
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "9432ad5d041ec942afe02fa4adc92da606ae6749aaacb98a749a25bcabfebbbc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest std-msgs std-srvs ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Common headers for neonavigation meta-package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
