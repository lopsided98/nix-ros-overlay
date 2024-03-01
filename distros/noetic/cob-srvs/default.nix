
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-srvs";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_srvs/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "e2f647572f2ef18bd42c8d2bfd86296355be963387b962360ac32f2e1a831360";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
