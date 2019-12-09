
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, std-srvs, tf, shape-msgs, catkin, rc-common-msgs, tf2-geometry-msgs, rcdiscover, visualization-msgs, roscpp, message-runtime, curl }:
buildRosPackage {
  pname = "ros-melodic-rc-pick-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_pick_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "34fd5d1bedaded50d02cb0d18eca55fd321b2cf905101dc982402be3b908941e";
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
