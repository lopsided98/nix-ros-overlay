
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs, variant-topic-tools, variant-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-variant-topic-test";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/anybotics/variant-release/archive/release/lunar/variant_topic_test/0.1.5-0.tar.gz;
    sha256 = "535534b8c133b6aa076266e584fba35dd9ff917ba664aaf45d264e98cf08a25a";
  };

  buildInputs = [ geometry-msgs std-msgs variant-topic-tools variant-msgs roscpp ];
  propagatedBuildInputs = [ geometry-msgs std-msgs variant-topic-tools variant-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant topic tools testing suites.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
