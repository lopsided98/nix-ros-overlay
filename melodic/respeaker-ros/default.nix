
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, angles, std-msgs, dynamic-reconfigure, tf, audio-common-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-respeaker-ros";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/respeaker_ros/2.1.12-2.tar.gz;
    sha256 = "3068ce83ec0375c8febc2140cb08077de4b7d7cde40f5aff1618b7a5839c79be";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyaudio dynamic-reconfigure std-msgs angles tf pythonPackages.pyusb audio-common-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
