
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hrpsys-ros-bridge, hrpsys-tools, openrtm-ros-bridge, openrtm-tools, rosnode-rtc, rtmbuild }:
buildRosPackage {
  pname = "ros-kinetic-rtmros-common";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rtmros_common/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "9cd6690acd1914cd304d17c541f0ed1f59627720614b505f223b168e16c38641";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hrpsys-ros-bridge hrpsys-tools openrtm-ros-bridge openrtm-tools rosnode-rtc rtmbuild ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package suite that provides all the capabilities for
    the ROS users to connect to the robots that run on
    <a href="http://www.openrtm.org/openrtm/en/content/what-rt-middleware-0">RT Middleware</a>
    or RTM-based controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
