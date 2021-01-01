
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-manipulators }:
buildRosPackage {
  pname = "ros-kinetic-ecl-manipulation";
  version = "0.60.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/kinetic/ecl_manipulation/0.60.1-1.tar.gz";
    name = "0.60.1-1.tar.gz";
    sha256 = "41d8f4bce69dacff16673e4c34452330699bef537114681203ab5b74622a84f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-manipulators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes basic manipulation related structures as well as a few 
    algorithms currently used at Yujin Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
