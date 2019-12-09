
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genlisp, common-msgs, ros, geneus, cmake-modules, roslisp, ros-comm, std-msgs, std-srvs, catkin, gennodejs, genpy, gencpp, message-generation, rosgraph-msgs, rosbag-migration-rule, roscpp-core, genmsg, message-runtime, rosconsole-bridge, rospack }:
buildRosPackage {
  pname = "ros-kinetic-ros-core";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_core/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "a359030ac0e039fbb1a487354880c7dd9798c932f37cf893278182a40ed79a81";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genlisp common-msgs ros geneus cmake-modules roslisp ros-comm std-msgs std-srvs catkin gennodejs genpy gencpp message-generation rosgraph-msgs rosbag-migration-rule roscpp-core genmsg message-runtime rosconsole-bridge rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
