
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, catkin, openslam-gmapping }:
buildRosPackage {
  pname = "ros-lunar-slam-gmapping";
  version = "1.3.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/slam_gmapping-release/archive/release/lunar/slam_gmapping/1.3.10-0.tar.gz;
    sha256 = "86b873c85b6812bdb5ab920c721476f161ce3fdceddb37b708e0f9290c861fb1";
  };

  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ "CC-BY-SA-3.0" ];
  };
}
