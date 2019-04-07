
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs, variant-topic-tools, variant-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-variant-topic-test";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/anybotics/variant-release/archive/release/melodic/variant_topic_test/0.1.5-0.tar.gz;
    sha256 = "bfb1f587202ae563d3c7c967de21660efdd00723675a8e16ae0b9592fc7d5142";
  };

  buildInputs = [ geometry-msgs std-msgs variant-topic-tools variant-msgs roscpp ];
  propagatedBuildInputs = [ geometry-msgs std-msgs variant-topic-tools variant-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant topic tools testing suites.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
