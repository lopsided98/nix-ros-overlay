
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, hardware-interface, boost, pluginlib, cob-base-controller-utils, realtime-tools, catkin, roscpp, nav-msgs, controller-interface, angles, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-tricycle-controller";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_tricycle_controller/0.7.8-1.tar.gz;
    sha256 = "9ca719d4accc7d1d7091b463a298ca2d8de6de7aac6dc007d2186fd0ac73b564";
  };

  buildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools roscpp nav-msgs controller-interface angles tf geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools roscpp nav-msgs controller-interface angles tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_tricycle_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
