
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, diagnostic-msgs, dynamic-reconfigure, message-generation, message-runtime, python3Packages, rospy, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-helper-tools";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_helper_tools/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "e7a1798c1c3a099faed2681812e2259961b593f1befba82b925797fdf8da6c97";
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
