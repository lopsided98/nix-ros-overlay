
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rc-common-msgs, rcdiscover, roscpp, std-srvs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-tagdetect-client";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_tagdetect_client/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "03afbb41710552ab519ed2b284f24a1d7cf501b153661cc25994fa21ea85dc3c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-runtime rc-common-msgs rcdiscover roscpp std-srvs tf tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
