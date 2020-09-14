
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rosbag, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-analysis";
  version = "1.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_analysis/1.10.2-3.tar.gz";
    name = "1.10.2-3.tar.gz";
    sha256 = "822d00a854cf159f2da2abbc1f87be23befd9a7943d0a2ddf78cf0f6196a13ce";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diagnostic_analysis package can convert a log of diagnostics data
    into a series of CSV files. Robot logs are recorded with rosbag, and
    can be processed offline using the scripts in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
