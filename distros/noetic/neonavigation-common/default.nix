
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "d82c0b510042786549f5e6544cb9e447710f115272ef15251ee09683e9d719ab";
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
