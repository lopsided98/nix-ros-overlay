
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosgraph, tf, roslib, rostopic, pythonPackages, catkin, openssl, rospy, mongodb-store }:
buildRosPackage {
  pname = "ros-melodic-mongodb-log";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_log/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "0482630592871557d4d9d9dff8bcd61a3c8801c840cc2477f51f4a3806a7453e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs rosgraph tf roslib rostopic openssl rospy mongodb-store ];
  propagatedBuildInputs = [ sensor-msgs rosgraph tf roslib rostopic pythonPackages.pymongo rospy mongodb-store ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
