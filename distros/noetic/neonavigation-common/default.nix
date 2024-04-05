
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "6a9b0f6dc50fe8ce20ae5c678400fda2d0678823c787f6ff46f0d1add40c4084";
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
