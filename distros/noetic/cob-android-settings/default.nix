
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-android-settings";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_settings/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "e4038140c231cf067a0de76b46b2d902bf15f4aad761bd4b03422c0acd2b9214";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
