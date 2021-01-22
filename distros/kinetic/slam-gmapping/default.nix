
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, openslam-gmapping }:
buildRosPackage {
  pname = "ros-kinetic-slam-gmapping";
  version = "1.3.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/kinetic/slam_gmapping/1.3.10-0.tar.gz";
    name = "1.3.10-0.tar.gz";
    sha256 = "2fc13e19ac3dfd0f18d543e436ac5bf2581b572a5f020073d72c9c47dabeb6c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ "CC-BY-SA-3.0" ];
  };
}
