
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, rospy, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-controller-utils";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_controller_utils/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "e30815b756bd1014420773bce5adcf8af99dd314b820dba394ab7160e927be72";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs roscpp rospy std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package contains common utils for various base_controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
