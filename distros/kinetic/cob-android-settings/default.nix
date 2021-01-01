
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-settings";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_settings/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "25ca18d3bcf147d71062004b062481e25a65440e34213b2b9dff6b9a3314e1d6";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_settings'';
    license = with lib.licenses; [ asl20 ];
  };
}
