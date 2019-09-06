
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-control-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "faa2290e9264a914ba18b9d6eac02f383d12cd72c8fb918c2bf7c92d4f694a1d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages and services used in various packages within cob_control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
