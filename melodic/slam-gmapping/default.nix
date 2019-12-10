
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, openslam-gmapping }:
buildRosPackage {
  pname = "ros-melodic-slam-gmapping";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/melodic/slam_gmapping/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "4adbd05d0930a653589ec957ec87bc93075f2372e08fc8c4b2514b88423fad0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
