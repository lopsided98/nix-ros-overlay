
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, diagnostic-msgs, roslib }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-analysis";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_analysis/1.9.3-0.tar.gz;
    sha256 = "72eb7b968b92d97d5c95a15a4e9e573c9f025158e2a4e4375ad18b744858093f";
  };

  buildInputs = [ diagnostic-msgs rostest rosbag roslib ];
  propagatedBuildInputs = [ diagnostic-msgs rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diagnostic_analysis package can convert a log of diagnostics data
    into a series of CSV files. Robot logs are recorded with rosbag, and
    can be processed offline using the scripts in this package.'';
    #license = lib.licenses.BSD;
  };
}
