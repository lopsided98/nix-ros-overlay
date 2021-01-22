
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmongocxx-ros, mongodb-store, openssl, pythonPackages, rosgraph, roslib, rospy, rostopic, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-log";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_log/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "f172d1720a099dcf02680c52aea645d121ebc8bceeb5571bba54c77b3d201619";
  };

  buildType = "catkin";
  buildInputs = [ openssl ];
  propagatedBuildInputs = [ libmongocxx-ros mongodb-store pythonPackages.pymongo rosgraph roslib rospy rostopic sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
