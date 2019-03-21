
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-settings";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_settings/0.1.4-0.tar.gz;
    sha256 = "2f082fc0abe7b497178557397fd8d7c9476270a78d26899ca8252c7d62344a83";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    #license = lib.licenses.Apache 2.0;
  };
}
