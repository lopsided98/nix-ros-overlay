
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-android-resource-server, cob-android-script-server, cob-android-settings }:
buildRosPackage {
  pname = "ros-kinetic-cob-android";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "3fce66303b1d9c19d5dbcb1b1eed062a9be94b5d540c08dc7fc4939ef589bbb3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-android-resource-server cob-android-script-server cob-android-settings ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android package provides tools for android apps operation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
