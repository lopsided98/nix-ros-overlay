
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, angles, std-msgs, dynamic-reconfigure, tf, audio-common-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-respeaker-ros";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/respeaker_ros/2.1.12-1.tar.gz;
    sha256 = "55a92ab62b553aed6ad5264aa656b921f9f46757b46e261f29091a15c82bce7b";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyaudio dynamic-reconfigure std-msgs angles tf pythonPackages.pyusb audio-common-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
