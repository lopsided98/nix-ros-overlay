
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rc-common-msgs, rcdiscover, roscpp, shape-msgs, std-srvs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-pick-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_pick_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "f6b60ba9ae5fc4d4f72ab227fbc936eb74e842368a66824217e5d6df8ef011d0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-runtime rc-common-msgs rcdiscover roscpp shape-msgs std-srvs tf tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception grasp generation modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
