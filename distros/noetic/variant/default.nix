
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, variant-msgs, variant-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-variant";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/noetic/variant/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "ad47d1ea0cd6cc8d5ab48855e69d24b6f521e1d5efa6f639e94a4169faf2b8aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ variant-msgs variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal variant library.'';
    license = with lib.licenses; [ "GNU-Lesser-General-Public-License-LGPL-" ];
  };
}
