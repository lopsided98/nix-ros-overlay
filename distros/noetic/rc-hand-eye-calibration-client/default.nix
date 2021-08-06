
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rcdiscover, roscpp, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rc-hand-eye-calibration-client";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_hand_eye_calibration_client/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "bffdfa0ff2f0e8ae876f04d5236989317dd66ad2e8efc48d392fb6248696ccf0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-generation message-runtime rcdiscover roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
