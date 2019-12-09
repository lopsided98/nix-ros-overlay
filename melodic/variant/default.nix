
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, variant-topic-test, variant-msgs, variant-topic-tools, catkin }:
buildRosPackage {
  pname = "ros-melodic-variant";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/melodic/variant/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "411a327e244ea82a5a6b105a6e81aad03422b96a22ee148d57ba2abaf96aa2cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ variant-topic-test variant-msgs variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal variant library.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
