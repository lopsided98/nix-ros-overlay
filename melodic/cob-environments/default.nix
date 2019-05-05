
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-melodic-cob-environments";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_environments/0.6.8-0.tar.gz;
    sha256 = "ff50f816354b9990e71a7ed557e7c3a6df5d513cb6469a7a36367b00396f5c65";
  };

  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
