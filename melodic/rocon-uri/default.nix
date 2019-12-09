
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, rocon-ebnf, catkin, pythonPackages, rocon-python-utils, rosunit, rospy }:
buildRosPackage {
  pname = "ros-melodic-rocon-uri";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_uri/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "bdaecc320ad45d56c33e3b5d3ad2448ac7e3952dca5c8e3fd34d3adee125c69c";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rocon-console rocon-ebnf pythonPackages.rospkg rocon-python-utils rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Module for working with rocon uri strings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
