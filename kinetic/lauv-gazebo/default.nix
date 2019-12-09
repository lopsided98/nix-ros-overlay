
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lauv-control, lauv-description, catkin, uuv-control-utils, rosbag }:
buildRosPackage {
  pname = "ros-kinetic-lauv-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_gazebo/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "dde6059edf49f860a8ece6721ff6635ee996b2b875b60f2301241ee5d0edded3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag lauv-control uuv-control-utils lauv-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
