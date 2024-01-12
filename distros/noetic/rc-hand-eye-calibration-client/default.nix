
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rcdiscover, roscpp, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rc-hand-eye-calibration-client";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_hand_eye_calibration_client/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "cf366385eea8a1204c6997b1c18bdce707ed6a079e4a9e32b0c25eb2ae901c7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-generation message-runtime rcdiscover roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
