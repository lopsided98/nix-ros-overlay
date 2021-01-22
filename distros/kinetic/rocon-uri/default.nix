
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-console, rocon-ebnf, rocon-python-utils, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-uri";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_uri/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "02d7bc47c7edfdf438502375659dfa331d0d72fed2e73843685253a99dfe0b4b";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-console rocon-ebnf rocon-python-utils rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Module for working with rocon uri strings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
