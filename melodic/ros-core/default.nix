
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genlisp, pluginlib, common-msgs, class-loader, ros, geneus, cmake-modules, rosconsole, roslisp, ros-comm, std-msgs, std-srvs, catkin, gennodejs, genpy, gencpp, message-generation, rosgraph-msgs, rosbag-migration-rule, roscpp-core, genmsg, message-runtime, rosconsole-bridge, rospack }:
buildRosPackage {
  pname = "ros-melodic-ros-core";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/ros_core/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "390d24da9397fce3a11f1dc7a0a23fb0886b81a4cfd2473906508358a670782d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genlisp pluginlib common-msgs class-loader ros geneus cmake-modules rosconsole roslisp ros-comm std-msgs std-srvs catkin gennodejs genpy gencpp message-generation rosgraph-msgs rosbag-migration-rule roscpp-core genmsg message-runtime rosconsole-bridge rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
