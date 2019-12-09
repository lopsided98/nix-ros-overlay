
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-redis, catkin, rocon-gateway-utils, gateway-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rocon-hub-client";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_hub_client/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "9bc3f700681d29505b1755939d9d7a75c81052e6c5748b0d599267917148267c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gateway-msgs rospy rocon-gateway-utils rocon-python-redis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client api for discovery and connection to rocon hubs. It also has
    a few convenience api for manipulating data on the hub.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
