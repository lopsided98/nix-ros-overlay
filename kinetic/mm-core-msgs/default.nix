
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mm-messages, ecl-utilities, catkin, ecl-build, ecl-containers }:
buildRosPackage {
  pname = "ros-kinetic-mm-core-msgs";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_core_msgs/0.2.4-0.tar.gz;
    sha256 = "292b43b96c100c56e44c2b688ac2026e79357f85e6d36ce0be27e43551d936b8";
  };

  propagatedBuildInputs = [ ecl-containers ecl-utilities mm-messages ecl-build ];
  nativeBuildInputs = [ ecl-containers mm-messages ecl-utilities catkin ecl-build ];

  meta = {
    description = ''Message definitions and serialisations for core messages.'';
    #license = lib.licenses.BSD;
  };
}
