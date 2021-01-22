
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-ebnf";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_ebnf/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "edf33279c0cc70f96807eba0264d01dcb8691a2a20954d0c9736a5cd0baab321";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Internal packaging of the 0.91 version of the simple python
    <a href="http://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_Form">EBNF</a>
    parser written by LParis.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
