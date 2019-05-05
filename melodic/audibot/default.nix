
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, catkin, audibot-gazebo }:
buildRosPackage {
  pname = "ros-melodic-audibot";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/robustify/audibot-release/archive/release/melodic/audibot/0.1.0-1.tar.gz;
    sha256 = "7e76b4daa4f12f798cfe9d6cb369a346f4c99ab31dc013ea460d3ee9c4b94570";
  };

  propagatedBuildInputs = [ audibot-description audibot-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
