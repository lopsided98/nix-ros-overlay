
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, hardware-interface, boost, pluginlib, cob-base-controller-utils, realtime-tools, catkin, roscpp, nav-msgs, controller-interface, angles, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-tricycle-controller";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_tricycle_controller/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "7bad482c1b60c3380122a76f551ba22792c32356318a0e9cf8a638b8a1061201";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools roscpp nav-msgs controller-interface angles tf geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface std-srvs boost cob-base-controller-utils pluginlib realtime-tools roscpp controller-interface nav-msgs angles tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_tricycle_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
