
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_msgs/0.6.10-0.tar.gz;
    sha256 = "5315fb257fa9d304fc8c17dc86474a274637bfd422241d7914a592748536c1d0";
  };

  buildInputs = [ diagnostic-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
