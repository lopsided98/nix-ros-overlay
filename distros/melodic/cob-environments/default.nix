
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-melodic-cob-environments";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_environments/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "b02a6060eb21ff68a0c881971f71fe8e99b6b1ba34964792947a8e4ffa5a2021";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
