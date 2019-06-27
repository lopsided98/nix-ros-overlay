
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, cob-android-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-script-server";
  version = "0.1.5-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_script_server/0.1.5-1.tar.gz;
    sha256 = "97e452e2d9ae7491b54a18a552ef73032da5595df42a526964f62cda9e39db66";
  };

  propagatedBuildInputs = [ cob-script-server cob-android-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
