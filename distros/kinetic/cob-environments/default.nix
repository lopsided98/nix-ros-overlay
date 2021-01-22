
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-environments";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_environments/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "c86ea91a4e07191e229ad1d09d5a121cb21a2f093b2e1764e51840ac96522ff6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
