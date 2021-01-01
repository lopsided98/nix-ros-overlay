
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-geneus";
  version = "2.2.6";

  src = fetchurl {
    url = "https://github.com/tork-a/geneus-release/archive/release/kinetic/geneus/2.2.6-0.tar.gz";
    name = "2.2.6-0.tar.gz";
    sha256 = "53c761b8f93977f6290596a545abd30b772781bb97b0cd4e1a7285c00d0dc232";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
