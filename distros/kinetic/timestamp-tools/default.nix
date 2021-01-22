
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslib }:
buildRosPackage {
  pname = "ros-kinetic-timestamp-tools";
  version = "1.6.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/kinetic/timestamp_tools/1.6.8-0.tar.gz";
    name = "1.6.8-0.tar.gz";
    sha256 = "62b0c3856b1275b15ec5ae303284165bbdd15ff35a3e3f8304c54817768bc6f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is currently for internal use only. Its API may change
    without warning in the future.  This package is deprecated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
