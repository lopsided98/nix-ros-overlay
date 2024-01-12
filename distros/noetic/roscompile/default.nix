
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python3Packages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-roscompile";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/roscompile/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1f4081ebd062fcc0ebe0bcb6054ba3e0673bc624a48518964dcccc5411587e82";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python3Packages.click python3Packages.pyyaml python3Packages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
