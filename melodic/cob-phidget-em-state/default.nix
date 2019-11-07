
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-em-state";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_em_state/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "1626f7bce8a701f167fea0972781950c434ef87a3301d667b89df1f7ad3454a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
