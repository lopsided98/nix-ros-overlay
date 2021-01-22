
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-log4cpp";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/log4cpp-release/archive/release/kinetic/log4cpp/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "0825201572960526cd7fd64ad2ca9e95f0756a39882d7a3c5404b38f555e8d03";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Log4cpp maintained by Orocos developers
    This version of log4cpp deviates from the official release
    by adding custom category factories. Orocos requires this for
    setting up real-time logging.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
