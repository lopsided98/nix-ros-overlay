
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-power-state";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_power_state/0.6.14-1.tar.gz;
    sha256 = "751a10d542aac7a10479c041a6bdf8e590038e50f192e1b2c8c9818ff738e441";
  };

  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
