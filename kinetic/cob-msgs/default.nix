
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "8d9f8e32061fdfcf8c02afa45da225bd84b0693e49bbe6b270e3c987b5ae9471";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ std-msgs diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
