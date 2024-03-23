
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, rospy, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-base-controller-utils";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_base_controller_utils/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "aff4c20df99aa85d1b389ef6a8aeec732d98347378bc882f3d1d5138cfe541f1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ controller-manager-msgs diagnostic-msgs geometry-msgs message-runtime nav-msgs roscpp rospy std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_base_controller_utils package contains common utils for various base_controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
