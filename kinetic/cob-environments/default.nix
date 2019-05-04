
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-environments";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_environments/0.6.8-0.tar.gz;
    sha256 = "d3e91a70315712ceba8a51be03d007338445fa134ff87d47d453dafff8f29f17";
  };

  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
