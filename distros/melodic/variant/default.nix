
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, variant-msgs, variant-topic-tools }:
buildRosPackage {
  pname = "ros-melodic-variant";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/melodic/variant/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "80377608569aefc0f130260b9455cab543d039cbc510880c59fe6fb9872401b5";
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
