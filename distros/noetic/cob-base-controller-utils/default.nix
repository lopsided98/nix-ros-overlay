
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, rospy, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-base-controller-utils";
  version = "0.8.21-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_base_controller_utils/0.8.21-1.tar.gz";
    name = "0.8.21-1.tar.gz";
    sha256 = "e1a5efe8d12cffdaa88e89b467d6e3e6bf20a9239daf833cac55e05444972712";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ controller-manager-msgs diagnostic-msgs geometry-msgs message-runtime nav-msgs roscpp rospy std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package contains common utils for various base_controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
