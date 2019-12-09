
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, cob-script-server, catkin, cob-android-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-android-script-server";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_script_server/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "ea5eb372ef9f8f09cc5e3526ea3a2f49559b7cff6cd83e9a800fffecbf1b825a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy cob-script-server cob-android-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
