
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-volta-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "756d20ba4ab6cd89bd88a9386addd6e62e9d45aa5357121c7eb29618a4e674c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
