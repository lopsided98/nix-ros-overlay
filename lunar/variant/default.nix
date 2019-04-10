
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, variant-topic-test, variant-topic-tools, catkin, variant-msgs }:
buildRosPackage {
  pname = "ros-lunar-variant";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/anybotics/variant-release/archive/release/lunar/variant/0.1.5-0.tar.gz;
    sha256 = "0057a9126f1677c1dd13023f0e1ae9fbaba9cdf78893b5e2d913a57d56f6d370";
  };

  propagatedBuildInputs = [ variant-topic-test variant-topic-tools variant-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal variant library.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
