
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-android-settings";
  version = "0.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_settings/0.1.11-1.tar.gz";
    name = "0.1.11-1.tar.gz";
    sha256 = "ccc13eeb823cc8f7f0489ad11f44edc756ad1982ac820be9c8743a0f50a82660";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
