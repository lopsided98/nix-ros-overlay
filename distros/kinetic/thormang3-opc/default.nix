
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-action-script-player, thormang3-demo, thormang3-foot-step-generator, thormang3-navigation, thormang3-offset-tuner-client }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-opc";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_opc/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "5747755ea8abcd7d17c6113686df714a59b54e41f9cc6a281e7b999f52f1b5ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-action-script-player thormang3-demo thormang3-foot-step-generator thormang3-navigation thormang3-offset-tuner-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_opc (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
