
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-srvs";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_srvs/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "866cc7f23ff49ddba08264ebe56eaf447f2b29dbb76a9dae8ad6da8381ed18a7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
