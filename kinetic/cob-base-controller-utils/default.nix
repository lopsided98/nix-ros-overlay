
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, roscpp, tf2, nav-msgs, urdf, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-controller-utils";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_controller_utils/0.7.3-0.tar.gz;
    sha256 = "418b36d2c66b07de69488de3880abeac1e5b844b10b6ba871dc0d4a92545ea4f";
  };

  propagatedBuildInputs = [ std-srvs roscpp tf2 nav-msgs urdf message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs catkin roscpp tf2 nav-msgs message-generation urdf std-msgs tf geometry-msgs ];

  meta = {
    description = ''The cob_base_controller_utils package'';
    #license = lib.licenses.Apache 2.0;
  };
}
