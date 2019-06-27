
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rc-common-msgs, tf2-geometry-msgs, catkin, roscpp, message-generation, curl, visualization-msgs, message-runtime, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-tagdetect-client";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_tagdetect_client/2.6.4-1.tar.gz;
    sha256 = "dc2402b4a4166383d360e5a6cb6cfaea85effbce57f4d8a82afb64fbdea6c346";
  };

  buildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs roscpp message-generation curl visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs rc-common-msgs tf2-geometry-msgs tf curl visualization-msgs dynamic-reconfigure message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
