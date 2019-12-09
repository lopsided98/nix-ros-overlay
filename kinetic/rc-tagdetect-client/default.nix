
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, std-srvs, tf, catkin, rc-common-msgs, tf2-geometry-msgs, rcdiscover, visualization-msgs, roscpp, message-runtime, curl }:
buildRosPackage {
  pname = "ros-kinetic-rc-tagdetect-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_tagdetect_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "8470d56fb825c58b61c71167adf735e8c9450489fdc11242e1c6530c318856ba";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure std-srvs tf rc-common-msgs tf2-geometry-msgs rcdiscover visualization-msgs roscpp message-generation curl ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure std-srvs tf rc-common-msgs tf2-geometry-msgs rcdiscover visualization-msgs roscpp message-runtime curl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
