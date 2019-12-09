
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, urdf, std-msgs, std-srvs, tf, catkin, roscpp, rospy, tf2, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-controller-utils";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_controller_utils/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "2c2319407fb608a89d011c62d7d924610cbcc07e783d3c6147d4686d6e0a720d";
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
