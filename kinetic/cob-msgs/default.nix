
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.6.11-0.tar.gz;
    sha256 = "86ce9e87e976cf3db062cc07ffdee2291e2f83865235765c99e72120bacbdba6";
  };

  buildInputs = [ diagnostic-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    #license = lib.licenses.Apache 2.0;
  };
}
