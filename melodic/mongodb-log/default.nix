
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, roslib, rosgraph, rostopic, mongodb-store, rospy, openssl, tf }:
buildRosPackage {
  pname = "ros-melodic-mongodb-log";
  version = "0.5.1-r2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_log/0.5.1-2.tar.gz;
    sha256 = "dc56aae114fe58747eb278bc0a61859a81ebc01ff0c8c939464aaf0620732596";
  };

  buildInputs = [ tf sensor-msgs rosgraph rostopic mongodb-store rospy openssl roslib ];
  propagatedBuildInputs = [ pythonPackages.pymongo tf sensor-msgs rosgraph rostopic mongodb-store rospy roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
