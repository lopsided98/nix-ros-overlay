
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-android-settings, cob-android-msgs, catkin, cob-android-resource-server, cob-android-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-android";
  version = "0.1.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.6-1.tar.gz;
    sha256 = "3cd172f01110d2ed2aea735e4fdc6067182763b93a6b5c5552028489b0f0691d";
  };

  propagatedBuildInputs = [ cob-android-settings cob-android-msgs cob-android-resource-server cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
