
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-control-msgs";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control_msgs/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "aa1cb8725ea52e0a64036570fb0b0f562033e4ee858a2a5c134d9080b149669e";
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
