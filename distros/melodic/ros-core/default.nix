
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, cmake-modules, common-msgs, gencpp, geneus, genlisp, genmsg, gennodejs, genpy, message-generation, message-runtime, pluginlib, ros, ros-comm, rosbag-migration-rule, rosconsole, rosconsole-bridge, roscpp-core, rosgraph-msgs, roslisp, rospack, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-ros-core";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/ros_core/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "390d24da9397fce3a11f1dc7a0a23fb0886b81a4cfd2473906508358a670782d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin class-loader cmake-modules common-msgs gencpp geneus genlisp genmsg gennodejs genpy message-generation message-runtime pluginlib ros ros-comm rosbag-migration-rule rosconsole rosconsole-bridge roscpp-core rosgraph-msgs roslisp rospack std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
