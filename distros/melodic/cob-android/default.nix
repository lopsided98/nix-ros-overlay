
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-android-resource-server, cob-android-script-server, cob-android-settings }:
buildRosPackage {
  pname = "ros-melodic-cob-android";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "9d6950e3aed168e81db74ce2fb4c467e79d8b4e2f6608c59186bc26a4867ae91";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-android-resource-server cob-android-script-server cob-android-settings ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
