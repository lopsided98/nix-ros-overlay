
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rc-common-msgs, tf2-geometry-msgs, rcdiscover, catkin, roscpp, message-generation, curl, visualization-msgs, message-runtime, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-tagdetect-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_tagdetect_client/2.7.0-1.tar.gz;
    sha256 = "2b8f52147dfdc5dd47283901f12ca03810aa5dad60accbb5055e3f4c4d80cd3a";
  };

  buildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs rcdiscover roscpp message-generation curl visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs tf rcdiscover curl visualization-msgs dynamic-reconfigure message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
