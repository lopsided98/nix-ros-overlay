
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, controller-interface, geometry-msgs, cob-base-controller-utils, hardware-interface, pluginlib, std-srvs, tf, catkin, realtime-tools, roscpp, angles, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-tricycle-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_tricycle_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4971dca410400abc6e37c24729e1faf6fb67984c39fd8b0e638870ff6abcaa5f";
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
