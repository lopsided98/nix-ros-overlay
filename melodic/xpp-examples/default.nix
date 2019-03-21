
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-quadrotor, xpp-hyq, rosbag, catkin, xpp-vis, roscpp }:
buildRosPackage {
  pname = "ros-melodic-xpp-examples";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_examples/1.0.9-0.tar.gz;
    sha256 = "edbd141c0639995abb62e5eaa2dd0f0b6885158dc3125e6e3eeec3ce47e3027a";
  };

  propagatedBuildInputs = [ xpp-quadrotor xpp-hyq rosbag roscpp xpp-vis ];
  nativeBuildInputs = [ xpp-quadrotor catkin xpp-hyq rosbag roscpp xpp-vis ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    #license = lib.licenses.BSD;
  };
}
