
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rc-common-msgs, rcdiscover, roscpp, shape-msgs, std-srvs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-pick-client";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_pick_client/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "42d6f34160333a7828d58c8c3af755cd87713a9e4d2047a0c4fbac78861e0119";
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
