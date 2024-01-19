
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-timestamp-tools";
  version = "1.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/noetic/timestamp_tools/1.6.9-1.tar.gz";
    name = "1.6.9-1.tar.gz";
    sha256 = "f8808b257a0c8b9e3129c98bb341817ba9e1f162ad88c9a385625c7cd30e9e73";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is currently for internal use only. Its API may change
    without warning in the future.  This package is deprecated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
