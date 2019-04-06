
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, roscpp, tf2, nav-msgs, urdf, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-controller-utils";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_controller_utils/0.7.4-0.tar.gz;
    sha256 = "886746c512237e6acb9155544d4229c23f933899f645f23e4dcdc4b3545bbfc7";
  };

  propagatedBuildInputs = [ std-srvs roscpp tf2 nav-msgs urdf message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs catkin roscpp tf2 nav-msgs message-generation urdf std-msgs tf geometry-msgs ];

  meta = {
    description = ''The cob_base_controller_utils package'';
    #license = lib.licenses.Apache 2.0;
  };
}
