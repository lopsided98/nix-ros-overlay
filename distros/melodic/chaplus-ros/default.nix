
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-chaplus-ros";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/chaplus_ros/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "39bb3f7e562d4f135fd6281b7abf4b71e20bdbf7559aa56909093bb446fba75e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for chaplus service'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
