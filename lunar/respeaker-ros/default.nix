
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, angles, std-msgs, dynamic-reconfigure, tf, audio-common-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-respeaker-ros";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/respeaker_ros/2.1.11-2.tar.gz;
    sha256 = "02825f057f9421768168d0eb3a29b43b404b2800fb8e3b5a3e5a55e76afa250e";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyaudio dynamic-reconfigure std-msgs angles tf pythonPackages.pyusb audio-common-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    #license = lib.licenses.Apache;
  };
}
