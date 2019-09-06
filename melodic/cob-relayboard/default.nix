
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-relayboard";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_relayboard/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "49facd7caf59cfd6491317d2fd7a985e5400552d8582ae7e2f312ef5fc3da760";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs cob-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
