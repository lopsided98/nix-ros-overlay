
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, audibot-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-audibot";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4b4f8bc4614dd60fe8ff4df02f415149efaa4875def2133b5105056edb1d954a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audibot-description audibot-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
