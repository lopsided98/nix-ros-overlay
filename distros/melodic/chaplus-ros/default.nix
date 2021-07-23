
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-chaplus-ros";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/chaplus_ros/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "63b92b40839313bd535feaaa8fc4897a0201ac550da2a2e0ca986c5e838d7018";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for chaplus service'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
