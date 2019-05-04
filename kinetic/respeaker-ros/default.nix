
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, angles, std-msgs, dynamic-reconfigure, tf, audio-common-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-respeaker-ros";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/respeaker_ros/2.1.11-0.tar.gz;
    sha256 = "050535e2dbd22482d68b486717caf2c8ff7da20d9dd8556dee0b423a410ef7d8";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyaudio dynamic-reconfigure std-msgs angles tf pythonPackages.pyusb audio-common-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
