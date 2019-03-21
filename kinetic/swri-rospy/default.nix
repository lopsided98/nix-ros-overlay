
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.8.0-0.tar.gz;
    sha256 = "fa6b79af7b5ddc15b657bd9c34e9b34b47d1e1087cb8d1529d5e3c9f44da9d95";
  };

  propagatedBuildInputs = [ std-msgs std-srvs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides added functionaliy on top of rospy, including a
  single-threaded callback queue.'';
    #license = lib.licenses.BSD;
  };
}
