
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-log4cpp";
  version = "2.9.0";

  src = fetchurl {
    url = https://github.com/orocos-gbp/log4cpp-release/archive/release/kinetic/log4cpp/2.9.0-0.tar.gz;
    sha256 = "6df7cdfed639d00712d7e1b5e277b1dd6fc2fc6729456d2727465d46499a42ec";
  };

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
