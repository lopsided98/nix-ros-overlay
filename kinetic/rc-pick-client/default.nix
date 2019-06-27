
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, shape-msgs, rc-common-msgs, tf2-geometry-msgs, catkin, roscpp, message-generation, curl, visualization-msgs, message-runtime, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-pick-client";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_pick_client/2.6.4-1.tar.gz;
    sha256 = "b8b23b245c5e59e521a01ed4ed237554ae0cc975df1549e4528370192b50ee62";
  };

  buildInputs = [ shape-msgs std-srvs rc-common-msgs tf2-geometry-msgs roscpp message-generation curl visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs std-srvs rc-common-msgs tf2-geometry-msgs tf curl visualization-msgs dynamic-reconfigure message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception grasp generation modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
