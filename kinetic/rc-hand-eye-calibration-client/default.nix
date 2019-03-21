
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-hand-eye-calibration-client";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_hand_eye_calibration_client/2.5.0-0.tar.gz;
    sha256 = "37184a95e450365e6719a438a174209c03833cea8d9131d7df0c0f9a792570b7";
  };

  propagatedBuildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure catkin roscpp geometry-msgs ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    #license = lib.licenses.BSD;
  };
}
