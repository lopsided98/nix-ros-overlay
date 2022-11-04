
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-melodic-geneus";
  version = "2.2.6";

  src = fetchurl {
    url = "https://github.com/tork-a/geneus-release/archive/release/melodic/geneus/2.2.6-0.tar.gz";
    name = "2.2.6-0.tar.gz";
    sha256 = "aadb96f7266f5584813ea6033317b1decf6a7358d01cf257239ae4c04ffb67c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
