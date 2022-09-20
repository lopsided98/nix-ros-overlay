
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, openslam-gmapping }:
buildRosPackage {
  pname = "ros-melodic-slam-gmapping";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/melodic/slam_gmapping/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "8ed5a534e68076a909ce36d5ba2f351e362738ab42d433e00a4ac8ffc1aaadb6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
