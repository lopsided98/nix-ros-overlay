
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-srvs";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_srvs/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "8dc0c4c966e4763fb8d443a647069a343e3d08f9e28ece2184fe38615997187c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
