
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-phidgets, rospy, catkin, cob-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-em-state";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_em_state/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "5e6b69db48739860f331a9f498f0ce82a640bf960b3664223e767fcae537a159";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-phidgets rospy cob-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
