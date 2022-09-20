
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-android-script-server";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_script_server/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "2942404063c08cb80590ee840c2b270a0c3df984770f795c364393c342ca5073";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
