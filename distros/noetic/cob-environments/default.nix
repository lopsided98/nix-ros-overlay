
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-noetic-cob-environments";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/noetic/cob_environments/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "0dbff2a9633387f45baf480921c0a91b04991d0dc8ba03d31da69938b1686fd8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
