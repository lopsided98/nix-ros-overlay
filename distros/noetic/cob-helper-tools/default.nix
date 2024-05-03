
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, diagnostic-msgs, dynamic-reconfigure, message-generation, message-runtime, python3Packages, rospy, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-helper-tools";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_helper_tools/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "f827cc0448a0d89798bf0a9fbace222e7b10ec2e8dc509821cc13ea2b5d3312f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs cob-script-server diagnostic-msgs dynamic-reconfigure message-runtime rospy std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Helper scripts for Care-O-bot";
    license = with lib.licenses; [ asl20 ];
  };
}
