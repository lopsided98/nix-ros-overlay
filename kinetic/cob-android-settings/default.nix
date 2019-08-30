
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-settings";
  version = "0.1.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_settings/0.1.6-1.tar.gz;
    sha256 = "05b454c4b123eda69869c9d5c88f88c4915b5dc8fc0886c315f878e5bafe8a3e";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
