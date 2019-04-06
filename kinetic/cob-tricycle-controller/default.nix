
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, hardware-interface, boost, pluginlib, cob-base-controller-utils, realtime-tools, catkin, roscpp, nav-msgs, controller-interface, angles, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-tricycle-controller";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_tricycle_controller/0.7.4-0.tar.gz;
    sha256 = "d75576a7832aca5a2abc5431956e8d0d8323a1bb6655a0c409143833c0f78a4b";
  };

  propagatedBuildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools roscpp nav-msgs controller-interface angles tf geometry-msgs ];
  nativeBuildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools catkin roscpp nav-msgs controller-interface angles tf geometry-msgs ];

  meta = {
    description = ''The cob_tricycle_controller package'';
    #license = lib.licenses.Apache 2.0;
  };
}
