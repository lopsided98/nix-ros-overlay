
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, controller-interface, geometry-msgs, cob-base-controller-utils, hardware-interface, pluginlib, std-srvs, tf, catkin, realtime-tools, roscpp, angles, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-tricycle-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_tricycle_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "27c1c03e70d7b4ef6981c4546eb50354cf1daedb705da774c3e85ea2dafa43eb";
  };

  buildType = "catkin";
  buildInputs = [ boost controller-interface geometry-msgs cob-base-controller-utils hardware-interface pluginlib std-srvs tf realtime-tools roscpp angles nav-msgs ];
  propagatedBuildInputs = [ boost geometry-msgs controller-interface cob-base-controller-utils hardware-interface pluginlib std-srvs tf realtime-tools roscpp angles nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_tricycle_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
