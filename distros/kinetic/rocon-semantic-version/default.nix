
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rocon-semantic-version";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_semantic_version/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "0506b915ccd5d60629a10843b2ed4c93b73b8e0f092e6892701c15be3cd76c10";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Internal packaging of the 2.2.2 version of the python semantic version module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
