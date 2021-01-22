
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lyap-control";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/AndyZe/lyap_control-release/archive/release/kinetic/lyap_control/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "25df3a7baddd2d233d210a24749f2cb69b94f51c6078d37fafda82e933c32aaa";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node to control nonlinear dynamic systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
