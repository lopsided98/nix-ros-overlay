
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-rosmake";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosmake/1.14.4-0.tar.gz;
    sha256 = "be071dcc29fd9f81f908389d84ec68d19c6f3e6e9e50961c37828afefa6d0a7f";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
