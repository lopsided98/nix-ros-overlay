
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, laser-geometry, message-filters, message-generation, message-runtime, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-assembler";
  version = "1.7.7-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_assembler-release/archive/release/melodic/laser_assembler/1.7.7-2.tar.gz";
    name = "1.7.7-2.tar.gz";
    sha256 = "7a1c69cc848803f8521457bb7e2d720219e38c1d7e66daa15d06f13b3b05f9b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ filters laser-geometry message-filters message-runtime pluginlib roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
