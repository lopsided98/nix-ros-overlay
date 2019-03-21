
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.6.10-0.tar.gz;
    sha256 = "7327d500f8aa5ce1c444d9d1f5fd9b860af779c1b4d2cbe4df8e40ce2c9471d2";
  };

  propagatedBuildInputs = [ diagnostic-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ diagnostic-msgs catkin message-generation std-msgs ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    #license = lib.licenses.Apache 2.0;
  };
}
