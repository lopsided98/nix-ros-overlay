
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-android-resource-server, cob-android-script-server, cob-android-settings }:
buildRosPackage {
  pname = "ros-kinetic-cob-android";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "646e07655bd4345c4c3d9fdf7f1cb1ec23aa02b5ab859e306f38ac6bae234f5a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-android-resource-server cob-android-script-server cob-android-settings ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
