
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-geometry-msgs, catkin, tf2-ros, tf2, message-generation, message-runtime, curl, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-hand-eye-calibration-client";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_hand_eye_calibration_client/2.6.4-1.tar.gz;
    sha256 = "0e5660da4f530723f4761156dc26012da8db7ff7a7a0e9ea70fb25b030a061aa";
  };

  buildInputs = [ std-srvs tf2-geometry-msgs tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs tf2-ros tf2 message-generation message-runtime curl dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
