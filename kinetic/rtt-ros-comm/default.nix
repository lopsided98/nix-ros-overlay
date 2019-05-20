
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosgraph-msgs, rtt-std-srvs, rtt-std-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros-comm";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_comm/2.9.2-1.tar.gz;
    sha256 = "c5304c6772b55e9d00b0a8a19224402e7fb2e6a54b7b4f08580d04a2cd69a8eb";
  };

  propagatedBuildInputs = [ rtt-rosgraph-msgs rtt-std-srvs rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_ros_comm package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
