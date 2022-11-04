
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rocon-ebnf";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_ebnf/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "90319996d97b66a6313bc7ac6a4c9377ca608582bce668f3040d671e8c49bad6";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Internal packaging of the 0.91 version of the simple python
    <a href="http://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_Form">EBNF</a>
    parser written by LParis.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
