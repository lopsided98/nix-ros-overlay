
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gencpp, genlisp, ros, rosconsole-bridge, rosgraph-msgs, roscpp-core, gennodejs, message-generation, rosbag-migration-rule, message-runtime, genmsg, ros-comm, rospack, std-srvs, catkin, std-msgs, common-msgs, cmake-modules, roslisp, geneus, genpy }:
buildRosPackage {
  pname = "ros-kinetic-ros-core";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.2-0.tar.gz;
    sha256 = "a359030ac0e039fbb1a487354880c7dd9798c932f37cf893278182a40ed79a81";
  };

  propagatedBuildInputs = [ ros-comm rospack std-srvs gencpp genlisp ros catkin rosconsole-bridge rosgraph-msgs roscpp-core std-msgs common-msgs cmake-modules gennodejs roslisp message-generation rosbag-migration-rule message-runtime geneus genmsg genpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    #license = lib.licenses.BSD;
  };
}
