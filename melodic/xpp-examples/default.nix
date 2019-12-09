
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xpp-vis, xpp-quadrotor, roscpp, rosbag, xpp-hyq }:
buildRosPackage {
  pname = "ros-melodic-xpp-examples";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_examples/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "df300b82eb4135d5c0343d75f1c11dc6e3c03df09b07582ab3a4f753338522df";
  };

  buildType = "catkin";
  buildInputs = [ xpp-vis xpp-quadrotor roscpp rosbag xpp-hyq ];
  propagatedBuildInputs = [ xpp-vis xpp-quadrotor roscpp rosbag xpp-hyq ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
