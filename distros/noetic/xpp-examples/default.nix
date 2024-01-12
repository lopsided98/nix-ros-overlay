
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, xpp-hyq, xpp-quadrotor, xpp-vis }:
buildRosPackage {
  pname = "ros-noetic-xpp-examples";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp_examples/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "bc63e0be9668cb5153caae1ad556d3222cac96d45e9d7c9e4b200a85da89dbca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbag roscpp xpp-hyq xpp-quadrotor xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
