
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosout";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosout/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "1dba19423ee6a4782e0725d024f97fa4d3bd0de2df58fa704993d11d4ed8307f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
