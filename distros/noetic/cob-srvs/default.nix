
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-srvs";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_srvs/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "636fb0f354dd232129c47f35e7daea21d284dcc2a88fef2aaf439205521e6820";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This Package contains Care-O-bot specific service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
