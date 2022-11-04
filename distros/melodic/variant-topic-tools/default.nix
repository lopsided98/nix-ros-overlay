
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, roscpp, roslib, std-msgs, variant-msgs }:
buildRosPackage {
  pname = "ros-melodic-variant-topic-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/melodic/variant_topic_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "c22ec49ac6b15f1670b487212d1ff3c840c667c8f55f719f68ceddb02f2e317e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ geometry-msgs gtest std-msgs ];
  propagatedBuildInputs = [ roscpp roslib variant-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Topic tools for treating messages as variant types.'';
    license = with lib.licenses; [ "GNU-Lesser-General-Public-License-LGPL-" ];
  };
}
