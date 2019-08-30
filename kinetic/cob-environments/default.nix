
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-environments";
  version = "0.6.10-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_environments/0.6.10-1.tar.gz;
    sha256 = "779950ec2c110439dfbb795bea37e96853b34ad9e3d3480c9251e33800531177";
  };

  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
