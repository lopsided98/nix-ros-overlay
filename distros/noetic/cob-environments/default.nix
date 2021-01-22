
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config }:
buildRosPackage {
  pname = "ros-noetic-cob-environments";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/noetic/cob_environments/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "67db40949f37cbee3164eb4cb75dff2010d196651aceddb91edc5ab0efe2905e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-default-env-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for IPA default environment configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
