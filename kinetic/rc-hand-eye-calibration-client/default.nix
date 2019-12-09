
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, std-srvs, catkin, roscpp, tf2-geometry-msgs, rcdiscover, tf2, message-runtime, curl, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rc-hand-eye-calibration-client";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_hand_eye_calibration_client/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "d50b5a327fa70e9be566222647223b8fe7eda9b19e283b48175af2969e31e076";
  };

  buildType = "catkin";
  buildInputs = [ message-generation geometry-msgs dynamic-reconfigure std-srvs roscpp tf2-geometry-msgs rcdiscover tf2 message-runtime curl tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure message-runtime std-srvs roscpp tf2-geometry-msgs rcdiscover tf2 message-generation curl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
