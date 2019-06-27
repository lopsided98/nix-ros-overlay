
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rc-common-msgs, tf2-geometry-msgs, catkin, roscpp, message-generation, curl, visualization-msgs, message-runtime, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-tagdetect-client";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_tagdetect_client/2.6.4-1.tar.gz;
    sha256 = "9e5aa333272fff12f2af22e97e109bd5de7b86a09f69d5d0ceb8f3fee393a98a";
  };

  buildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs roscpp message-generation curl visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs tf curl visualization-msgs dynamic-reconfigure message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
