
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pacmod3";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/astuff/pacmod3-release/archive/release/lunar/pacmod3/1.2.1-0.tar.gz;
    sha256 = "f206a1be491c80e764dfdefc025546f4898d2feedf85049095bdc566fe7cae66";
  };

  buildInputs = [ std-msgs can-msgs roscpp pacmod-msgs ];
  propagatedBuildInputs = [ std-msgs can-msgs roscpp pacmod-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    #license = lib.licenses.MIT;
  };
}
