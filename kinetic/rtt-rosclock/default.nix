
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosgraph-msgs, cmake-modules, catkin, libxml2, rtt, ocl, rostime, roscpp, rospack }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosclock";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosclock/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "839492b228a6a56577a2d2270ce65c5e27e68de04c6b87423b550ccdafb119cd";
  };

  buildType = "catkin";
  buildInputs = [ rtt-rosgraph-msgs cmake-modules libxml2 rtt ocl rostime roscpp rospack ];
  propagatedBuildInputs = [ rtt-rosgraph-msgs cmake-modules libxml2 rtt ocl rostime roscpp rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to access different time measurements on a realtime host.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
