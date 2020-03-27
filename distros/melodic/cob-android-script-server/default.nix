
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-android-script-server";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_script_server/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "f6eaa639895b8b9151feb035d8f7a8b94fbcf33122ab3e53053dd46ca153a185";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
