
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, urdf, std-msgs, std-srvs, tf, catkin, roscpp, rospy, tf2, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-controller-utils";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_controller_utils/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4689923a01b200a6735acb821001898b4bb6074bc84fc2546e51dae3de6aacf1";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf std-msgs std-srvs tf roscpp tf2 message-generation nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs urdf message-runtime std-msgs std-srvs tf roscpp tf2 rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
