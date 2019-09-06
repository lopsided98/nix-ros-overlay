
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, cob-android-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-script-server";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_script_server/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "600c0d1983f6aec0edeadaf6fba5f3764853b86796cff0526b15f6cc3546441b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server cob-android-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
