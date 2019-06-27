
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-android-settings, cob-android-msgs, catkin, cob-android-resource-server, cob-android-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-android";
  version = "0.1.5-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.5-1.tar.gz;
    sha256 = "a7193290011933341669169c0a9d01308de3796a80bf6751028807ddfb4c052d";
  };

  propagatedBuildInputs = [ cob-android-settings cob-android-msgs cob-android-resource-server cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
