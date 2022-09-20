
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-android-resource-server, cob-android-script-server, cob-android-settings }:
buildRosPackage {
  pname = "ros-melodic-cob-android";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "997fbbb881d6d168f51a75a2f1444d9178b7b34f33e0d2276651cd3f9e744da7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-android-msgs cob-android-resource-server cob-android-script-server cob-android-settings ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
