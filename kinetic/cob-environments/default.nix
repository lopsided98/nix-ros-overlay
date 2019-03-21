
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-environments";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_environments/0.6.7-0.tar.gz;
    sha256 = "47c08e3652ca00397d8c4a54c2f1c289b85f18a1b5752a300b6837a673821a98";
  };

  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    #license = lib.licenses.Apache 2.0;
  };
}
