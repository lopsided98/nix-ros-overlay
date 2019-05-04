
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, speech-recognition-msgs, std-srvs, audio-capture, julius, catkin, pythonPackages, sound-play, rostest, rospy, nkf, audio-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-julius-ros";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius_ros/2.1.11-0.tar.gz;
    sha256 = "b05c31e9b071b682090732d8b3dc311f7e194c2e304f0e25a4ef33ae691713e4";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ speech-recognition-msgs std-srvs audio-capture pythonPackages.rospkg julius sound-play pythonPackages.lxml rospy nkf audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The julius_ros package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
