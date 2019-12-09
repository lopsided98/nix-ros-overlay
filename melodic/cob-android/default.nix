
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-android-resource-server, catkin, cob-android-script-server, cob-android-settings, cob-android-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-android";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "d14eb86dac83a30e8cc4769108244b84d84ca3aa59646e6c660f7f17b46cb99a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-script-server cob-android-resource-server cob-android-settings cob-android-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
