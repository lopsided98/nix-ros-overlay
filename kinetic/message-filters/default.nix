
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, rostest, xmlrpcpp, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-message-filters";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/message_filters/1.12.14-0.tar.gz;
    sha256 = "faa45c9fa60f227b7a015a7edc4824d5f823563bb7753a37fffb300472dded96";
  };

  buildInputs = [ rostest rosconsole xmlrpcpp boost roscpp rosunit ];
  propagatedBuildInputs = [ roscpp rosconsole xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    #license = lib.licenses.BSD;
  };
}