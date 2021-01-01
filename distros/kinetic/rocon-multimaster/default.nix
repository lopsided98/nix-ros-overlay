
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rocon-gateway, rocon-gateway-tests, rocon-gateway-utils, rocon-hub, rocon-hub-client, rocon-test, rocon-unreliable-experiments }:
buildRosPackage {
  pname = "ros-kinetic-rocon-multimaster";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_multimaster/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "d75d660fbcbf425976978defb7e76ba459e55d460760316ab27907e838fb7fce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-gateway rocon-gateway-tests rocon-gateway-utils rocon-hub rocon-hub-client rocon-test rocon-unreliable-experiments ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This doesn't do everything you need for multimaster, however it does
    provide the building blocks common to most or all multimaster systems.
    In particular, it provides the gateway model, which is an upgrade on
    old foreign_relay and master_sync concepts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
