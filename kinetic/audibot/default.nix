
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, catkin, audibot-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-audibot";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "e600b42d2a23b5b5a28a3f11ce7058a962f0bfa67bcfaea31e1aa8f570c2090a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audibot-description audibot-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
