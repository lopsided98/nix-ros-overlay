
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rc-common-msgs, rcdiscover, roscpp, std-srvs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-tagdetect-client";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_tagdetect_client/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "e72dd88a60d98bc935e83cf3957172e0315c82723b699a630e6e878d6702068b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-runtime rc-common-msgs rcdiscover roscpp std-srvs tf tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
