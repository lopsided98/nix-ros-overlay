
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-geometry-msgs, catkin, tf2-ros, tf2, message-generation, message-runtime, curl, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-hand-eye-calibration-client";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_hand_eye_calibration_client/2.6.4-1.tar.gz;
    sha256 = "a09c2411efb17e213addab2f201e5044c2a32b39badcb6b58cd00ab4415736c7";
  };

  buildInputs = [ std-srvs tf2-geometry-msgs tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
