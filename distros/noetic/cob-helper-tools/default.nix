
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, diagnostic-msgs, dynamic-reconfigure, message-generation, message-runtime, python3Packages, rospy, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-helper-tools";
  version = "0.6.30-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_helper_tools/0.6.30-2.tar.gz";
    name = "0.6.30-2.tar.gz";
    sha256 = "a53970854796971542220b58afea1d380843cc8650303b38432565ea49ba0466";
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
