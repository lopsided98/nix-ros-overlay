
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, roscpp, tf2, nav-msgs, urdf, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-controller-utils";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_controller_utils/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "b44096f3ca50f374c77a6b0dd84c4e0401d5e10698ba010de83183252f849f48";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs roscpp tf2 nav-msgs message-generation urdf std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs roscpp tf2 nav-msgs urdf message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_base_controller_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
