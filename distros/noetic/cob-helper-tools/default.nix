
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, diagnostic-msgs, dynamic-reconfigure, message-generation, message-runtime, python3Packages, rospy, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-helper-tools";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_helper_tools/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "d72ccf4b1865263bd29bd35cc6bb775baf9b6cd964220871b880dd928090eed3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs cob-script-server diagnostic-msgs dynamic-reconfigure message-runtime rospy std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
