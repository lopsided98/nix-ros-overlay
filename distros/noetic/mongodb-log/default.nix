
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mongodb-store, openssl, python3Packages, rosgraph, roslib, rospy, rostopic, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mongodb-log";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/noetic/mongodb_log/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6b9fe0fa8c16ad44856c618367fa5fefd1911bf7a90d3f57ab8fff833e7ba75b";
  };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  propagatedBuildInputs = [ mongodb-store python3Packages.pymongo rosgraph roslib rospy rostopic sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
