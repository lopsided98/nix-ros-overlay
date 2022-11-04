
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mongodb-store, openssl, pythonPackages, rosgraph, roslib, rospy, rostopic, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mongodb-log";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_log/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "0482630592871557d4d9d9dff8bcd61a3c8801c840cc2477f51f4a3806a7453e";
  };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  propagatedBuildInputs = [ mongodb-store pythonPackages.pymongo rosgraph roslib rospy rostopic sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
