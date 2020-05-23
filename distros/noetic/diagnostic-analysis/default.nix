
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rosbag, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-analysis";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_analysis/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "964f0541e80120c25b870948830cd15c7eb9102f2aa405c77c9db881c4f9d985";
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
