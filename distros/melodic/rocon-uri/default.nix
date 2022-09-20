
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-console, rocon-ebnf, rocon-python-utils, rospy, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rocon-uri";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_uri/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "bdaecc320ad45d56c33e3b5d3ad2448ac7e3952dca5c8e3fd34d3adee125c69c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-console rocon-ebnf rocon-python-utils rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Module for working with rocon uri strings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
