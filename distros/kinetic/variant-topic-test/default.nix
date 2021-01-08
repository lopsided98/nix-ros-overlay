
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, std-msgs, variant-msgs, variant-topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-variant-topic-test";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/kinetic/variant_topic_test/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "6ae04151a3f0016de0091e9b86fe6d42fd5373e6ae071997ad87b4788d50ca2b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp std-msgs variant-msgs variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant topic tools testing suites.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
