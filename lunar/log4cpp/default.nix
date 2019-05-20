
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-lunar-log4cpp";
  version = "2.9.1-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/log4cpp-release/archive/release/lunar/log4cpp/2.9.1-1.tar.gz;
    sha256 = "7300eafdcd0f8be9e2431d7e8ee77522f3d73047873ead940c76ff56872a4ca8";
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
