
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rosbag, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-analysis";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_analysis/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "a4a41cad96cbe9a1505626b63bad0fbc71ac4d4a97d961af690e112cb610c914";
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
