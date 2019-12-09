
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, std-srvs, tf, shape-msgs, catkin, rc-common-msgs, tf2-geometry-msgs, rcdiscover, visualization-msgs, roscpp, message-runtime, curl }:
buildRosPackage {
  pname = "ros-kinetic-rc-pick-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_pick_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "f6b60ba9ae5fc4d4f72ab227fbc936eb74e842368a66824217e5d6df8ef011d0";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure std-srvs tf shape-msgs rc-common-msgs tf2-geometry-msgs rcdiscover visualization-msgs roscpp message-generation curl ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure std-srvs tf shape-msgs rc-common-msgs tf2-geometry-msgs rcdiscover visualization-msgs roscpp message-runtime curl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception grasp generation modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
