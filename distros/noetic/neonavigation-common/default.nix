
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "cbc158c9401860bfaa9aafa9f6c94ddee04b005739227758aec1af91ddd3ba85";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest std-msgs std-srvs ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
