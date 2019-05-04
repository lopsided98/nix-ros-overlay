
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosclean";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosclean/1.14.4-0.tar.gz;
    sha256 = "3d41dc3f31411b8980076618b74c112e026d2df77ceadd5b06da8c2024c5659e";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
