
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-melodic-cob-environments";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_environments/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "e3cb6c21bfd6e5961efdfc0784f72a914aad138a464ba557c6e4b44c6fc1d107";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
