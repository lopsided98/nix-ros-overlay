
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-script-server";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_script_server/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "05276ffb13f85de759737489736680976ec21fd7e4af525b7d2a9f35218fcc8c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
