
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosmake";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosmake/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "eb8d470383a5c74f477fce26264563336c42ab19e868feffda81cb4eed254f87";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ catkin python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
