
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-lyap-control";
  version = "0.0.13";

  src = fetchurl {
    url = https://github.com/AndyZe/lyap_control-release/archive/release/kinetic/lyap_control/0.0.13-0.tar.gz;
    sha256 = "25df3a7baddd2d233d210a24749f2cb69b94f51c6078d37fafda82e933c32aaa";
  };

  propagatedBuildInputs = [ std-msgs roscpp message-runtime rospy ];
  nativeBuildInputs = [ message-generation rospy std-msgs catkin roscpp ];

  meta = {
    description = ''A node to control nonlinear dynamic systems'';
    #license = lib.licenses.BSD;
  };
}
