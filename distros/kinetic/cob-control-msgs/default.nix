
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-msgs";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_msgs/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "f94addfd5e54b2e29cc7532e38ee719fdb9f4dd7564514685a419111a3673deb";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages and services used in various packages within cob_control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
