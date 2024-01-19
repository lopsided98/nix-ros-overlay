
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, roscpp, roslib, std-msgs, variant-msgs }:
buildRosPackage {
  pname = "ros-noetic-variant-topic-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/noetic/variant_topic_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "cddba6c96739c4a1dbe1459d3c4848312f103b6ab6aeca8fc4e1933dd3dbbc7e";
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
