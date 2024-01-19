
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rosbag, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-analysis";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_analysis/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "8873422f1afad67a9cba7827c1f8ab7191783ac7f7fb3d52718635a7a22a8514";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diagnostic_analysis package can convert a log of diagnostics data
    into a series of CSV files. Robot logs are recorded with rosbag, and
    can be processed offline using the scripts in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
