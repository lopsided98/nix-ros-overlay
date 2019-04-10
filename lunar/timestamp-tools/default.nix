
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-timestamp-tools";
  version = "1.6.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/driver_common-release/archive/release/lunar/timestamp_tools/1.6.8-0.tar.gz;
    sha256 = "7644107e9c3f09d4a5475544a9623cca1a83703a9da5683120091bf3ee05a9ed";
  };

  buildInputs = [ roslib roscpp ];
  propagatedBuildInputs = [ roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is currently for internal use only. Its API may change
    without warning in the future.  This package is deprecated.'';
    #license = lib.licenses.BSD;
  };
}
