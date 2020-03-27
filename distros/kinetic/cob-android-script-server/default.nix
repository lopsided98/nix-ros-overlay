
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-script-server";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_script_server/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "86ac38427da31f4c042fcdbb2cdfe5f317e1500da5c07003627f9b9e1b6fc6b2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
