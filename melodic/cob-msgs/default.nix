
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_msgs/0.7.0-1.tar.gz;
    sha256 = "b1bb794b3703a6ef5e48a27ad09777c2b0b0d0f30a468122a87bea3e5686b28b";
  };

  buildInputs = [ diagnostic-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
