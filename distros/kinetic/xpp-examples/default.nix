
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, xpp-hyq, xpp-quadrotor, xpp-vis }:
buildRosPackage {
  pname = "ros-kinetic-xpp-examples";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_examples/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "760b96aa3a2d78cb1d0f07f15818213cf3b3c50439253b626afc3f39b5b40b7c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag roscpp xpp-hyq xpp-quadrotor xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
