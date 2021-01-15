
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lauv-control, lauv-description, rosbag, uuv-control-utils }:
buildRosPackage {
  pname = "ros-kinetic-lauv-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_gazebo/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "dde6059edf49f860a8ece6721ff6635ee996b2b875b60f2301241ee5d0edded3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lauv-control lauv-description rosbag uuv-control-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
