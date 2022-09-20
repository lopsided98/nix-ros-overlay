
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lauv-control, lauv-description, rosbag, uuv-control-utils }:
buildRosPackage {
  pname = "ros-melodic-lauv-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/melodic/lauv_gazebo/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "ba4a2d4a1567b183be8c500d5dc714ebbec6802532da93eaab20cc7cdb6a266c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lauv-control lauv-description rosbag uuv-control-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
