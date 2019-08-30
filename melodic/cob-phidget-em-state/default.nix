
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-em-state";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_em_state/0.7.0-1.tar.gz;
    sha256 = "d27b10fff6cb4e8a46923f44a3b505055b0b29bbe5be704fc838bde4a76622a1";
  };

  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
