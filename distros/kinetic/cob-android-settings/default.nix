
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-settings";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_settings/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "f6b9d10ef27f1a1a448f4c099c8a00f3e84fee460e87de5dd43d7965f6e43496";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
