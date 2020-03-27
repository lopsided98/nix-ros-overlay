
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-environments";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_environments/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "121fa163fa1350094972975aeb05b47bc4d182c213be16efe1feacddeab8e457";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
