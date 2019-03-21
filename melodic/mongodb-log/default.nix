
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, roslib, rosgraph, rostopic, mongodb-store, rospy, openssl, tf }:
buildRosPackage {
  pname = "ros-melodic-mongodb-log";
  version = "0.5.0-r5";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_log/0.5.0-5.tar.gz;
    sha256 = "5ce0f217758fb3d15c24d5e6a00c59116028201b7ae95e3b5fa91af0ed8d5f2d";
  };

  propagatedBuildInputs = [ rosgraph rostopic mongodb-store rospy pythonPackages.pymongo sensor-msgs roslib tf ];
  nativeBuildInputs = [ tf sensor-msgs catkin rosgraph rostopic mongodb-store rospy openssl roslib ];

  meta = {
    description = ''The mongodb_log package'';
    #license = lib.licenses.GPLv2;
  };
}
