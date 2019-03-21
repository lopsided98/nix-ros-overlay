
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-online-walking-module-msgs, op3-offset-tuner-msgs, catkin, op3-walking-module-msgs, op3-action-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robotis-op3-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-msgs-release/archive/release/kinetic/robotis_op3_msgs/0.1.1-0.tar.gz;
    sha256 = "9a9b24db965ec1dd99e38cd912f7ac784b532c96a05f81425bc797a90283b314";
  };

  propagatedBuildInputs = [ op3-online-walking-module-msgs op3-action-module-msgs op3-walking-module-msgs op3-offset-tuner-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages packages for the ROBOTIS OP3 (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
