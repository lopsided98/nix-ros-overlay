
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, rospy, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-melodic-cob-base-controller-utils";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_controller_utils/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "b37d260e4cd882bb0caa72e0c73f1d9fc25869c0e91e2f046a79b1141cd29ab6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs roscpp rospy std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package contains common utils for various base_controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
