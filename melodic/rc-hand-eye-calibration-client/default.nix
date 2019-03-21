
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-hand-eye-calibration-client";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_hand_eye_calibration_client/2.5.0-0.tar.gz;
    sha256 = "4a0f8dbf4cf73db3976b83dea3cb12c86d3bc81e41241ec3a1b00bdb23245c85";
  };

  propagatedBuildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure catkin roscpp geometry-msgs ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    #license = lib.licenses.BSD;
  };
}
