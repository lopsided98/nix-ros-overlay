
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rcdiscover, roscpp, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rc-hand-eye-calibration-client";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_hand_eye_calibration_client/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "a6196d7466ec9f0830bb216e0afa6ce939c88a5d9d303cccf87a760dbb187643";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-generation message-runtime rcdiscover roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
