
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, angles, std-msgs, dynamic-reconfigure, tf, audio-common-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-respeaker-ros";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/respeaker_ros/2.1.11-0.tar.gz;
    sha256 = "d497d9fe2e707120d60d0ce824e8476a9b65b3409d36d8e899cacc93257a56d2";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyaudio dynamic-reconfigure std-msgs angles tf pythonPackages.pyusb audio-common-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    #license = lib.licenses.Apache;
  };
}
