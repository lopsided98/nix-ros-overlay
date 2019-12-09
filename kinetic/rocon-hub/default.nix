
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-semantic-version, rocon-python-comms, rocon-console, avahi, rocon-python-redis, rosgraph, std-srvs, catkin, redis, rocon-gateway }:
buildRosPackage {
  pname = "ros-kinetic-rocon-hub";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_hub/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "b8248f51ea37649c31da34ef01bd52fdcb393be5d64f46140a28b638cd861bdc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-semantic-version rocon-console rocon-python-comms avahi rocon-python-redis rosgraph std-srvs redis rocon-gateway ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A hub acts as a shared key-value store for multiple ros 
    systems (primarily used by gateways).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
