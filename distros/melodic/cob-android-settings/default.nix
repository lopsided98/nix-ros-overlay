
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-android-settings";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_settings/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "59602692b35e9a17cc5379696012c86046d51533d3f7900e822ef5b1316336e5";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
