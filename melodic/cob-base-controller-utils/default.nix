
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, roscpp, tf2, nav-msgs, urdf, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-controller-utils";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_controller_utils/0.8.0-1.tar.gz;
    sha256 = "5bc959ee2f52d5457a0e0b41f4f3e78e502d103c86fe2e53ba07183f43008347";
  };

  buildInputs = [ std-srvs roscpp tf2 nav-msgs message-generation urdf std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs roscpp tf2 nav-msgs urdf message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
