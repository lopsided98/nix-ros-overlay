
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, diagnostic-msgs, roslib }:
buildRosPackage {
  pname = "ros-lunar-diagnostic-analysis";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_analysis/1.9.3-0.tar.gz;
    sha256 = "e02dc484d4e09fb0b627915720be56781d7b0dae01c30657a977baa049ecea71";
  };

  buildInputs = [ diagnostic-msgs rostest rosbag roslib ];
  propagatedBuildInputs = [ diagnostic-msgs rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diagnostic_analysis package can convert a log of diagnostics data
    into a series of CSV files. Robot logs are recorded with rosbag, and
    can be processed offline using the scripts in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
