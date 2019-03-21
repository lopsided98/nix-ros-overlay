
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-quadrotor, xpp-hyq, rosbag, catkin, xpp-vis, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-xpp-examples";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_examples/1.0.8-0.tar.gz;
    sha256 = "e3ed58b9938edf8b75ffad0691ae9f41c50354855b9a504eb74f924c5c0a0d4b";
  };

  propagatedBuildInputs = [ xpp-quadrotor xpp-hyq rosbag roscpp xpp-vis ];
  nativeBuildInputs = [ xpp-quadrotor catkin xpp-hyq rosbag roscpp xpp-vis ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    #license = lib.licenses.BSD;
  };
}
