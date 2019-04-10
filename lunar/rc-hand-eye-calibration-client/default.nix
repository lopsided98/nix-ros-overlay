
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rc-hand-eye-calibration-client";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/lunar/rc_hand_eye_calibration_client/2.5.0-0.tar.gz;
    sha256 = "19d86b1aa5ea15fc64c7d42f310555e0c038c16c1d97676a5084e0c75fd595bf";
  };

  buildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs message-generation curl message-runtime dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_hand_eye_calibration_client package'';
    #license = lib.licenses.BSD;
  };
}
