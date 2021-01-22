
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-settings";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_settings/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "dedbd17cb3a774f3bc2063be8e14e532fca6d8ef904033ffad14c3ab8dbe06cf";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
