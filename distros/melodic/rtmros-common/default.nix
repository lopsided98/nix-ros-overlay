
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hrpsys-ros-bridge, hrpsys-tools, openrtm-ros-bridge, openrtm-tools, rosnode-rtc, rtmbuild }:
buildRosPackage {
  pname = "ros-melodic-rtmros-common";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/rtmros_common/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "0af1052d8862dc6e92b5ea1c656d311b32b1a55ad6127972c6c7be977f324cbc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
