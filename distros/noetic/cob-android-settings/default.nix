
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-android-settings";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_settings/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "82b42376f687b02e6091933fbfef35118386a6889641bc667a5cbafacf8d34d3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
