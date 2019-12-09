
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, std-srvs, tf, catkin, rc-common-msgs, tf2-geometry-msgs, rcdiscover, visualization-msgs, roscpp, message-runtime, curl }:
buildRosPackage {
  pname = "ros-melodic-rc-tagdetect-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_tagdetect_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "2b8f52147dfdc5dd47283901f12ca03810aa5dad60accbb5055e3f4c4d80cd3a";
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
