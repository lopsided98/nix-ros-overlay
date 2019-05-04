
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosmake";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosmake/1.14.4-0.tar.gz;
    sha256 = "538e2a68eaa3a9a78c9b722e8d1736a23b42c06e291626ef442c135242c0f0f6";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
