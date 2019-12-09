
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, message-runtime, std-msgs, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-lyap-control";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/AndyZe/lyap_control-release/archive/release/kinetic/lyap_control/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "25df3a7baddd2d233d210a24749f2cb69b94f51c6078d37fafda82e933c32aaa";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rospy message-generation roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node to control nonlinear dynamic systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
