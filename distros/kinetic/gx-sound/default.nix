
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gx-sound-msgs, gx-sound-player }:
buildRosPackage {
  pname = "ros-kinetic-gx-sound";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/groove-x/gx_sound-release/archive/release/kinetic/gx_sound/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "a9d90316e4adb7471d5efbcbbac78fe8c06f804278a7e679a048754c559f0812";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gx-sound-msgs gx-sound-player ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gx_sound package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
