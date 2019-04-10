
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gencpp, genlisp, ros, rosconsole-bridge, rosgraph-msgs, roscpp-core, gennodejs, message-generation, rosbag-migration-rule, message-runtime, genmsg, ros-comm, rospack, std-srvs, catkin, std-msgs, common-msgs, cmake-modules, roslisp, geneus, genpy }:
buildRosPackage {
  pname = "ros-lunar-ros-core";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/ros_core/1.3.2-0.tar.gz;
    sha256 = "09329299ac9ac56e7456edc6b41dc0efddcedf4651b9c4fcd94dadaa110145b3";
  };

  propagatedBuildInputs = [ ros-comm rospack std-srvs gencpp genlisp ros catkin rosconsole-bridge rosgraph-msgs roscpp-core std-msgs common-msgs cmake-modules gennodejs roslisp message-generation rosbag-migration-rule message-runtime geneus genmsg genpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    #license = lib.licenses.BSD;
  };
}
