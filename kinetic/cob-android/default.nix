
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-android-settings, cob-android-msgs, catkin, cob-android-resource-server, cob-android-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-android";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.4-0.tar.gz;
    sha256 = "ded93fe3df6c5dbfa1c69995ad8fa0fcbd9deceb6fa035ef25480eadc51a14f0";
  };

  propagatedBuildInputs = [ cob-android-settings cob-android-msgs cob-android-resource-server cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    #license = lib.licenses.Apache 2.0;
  };
}
