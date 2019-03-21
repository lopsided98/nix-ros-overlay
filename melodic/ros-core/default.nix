
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, gencpp, genlisp, class-loader, ros, rosconsole-bridge, rosgraph-msgs, roscpp-core, gennodejs, message-generation, rosbag-migration-rule, message-runtime, genmsg, ros-comm, rospack, std-srvs, catkin, std-msgs, common-msgs, cmake-modules, pluginlib, roslisp, geneus, genpy }:
buildRosPackage {
  pname = "ros-melodic-ros-core";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/melodic/ros_core/1.4.1-0.tar.gz;
    sha256 = "390d24da9397fce3a11f1dc7a0a23fb0886b81a4cfd2473906508358a670782d";
  };

  propagatedBuildInputs = [ ros-comm rospack std-srvs rosconsole gencpp genlisp class-loader ros catkin rosconsole-bridge rosgraph-msgs roscpp-core std-msgs common-msgs cmake-modules pluginlib gennodejs roslisp message-generation rosbag-migration-rule message-runtime geneus genmsg genpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    #license = lib.licenses.BSD;
  };
}
