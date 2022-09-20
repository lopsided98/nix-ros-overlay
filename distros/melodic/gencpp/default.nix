
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-gencpp";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/melodic/gencpp/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "266a62b59b92406a6e2641084dc827a7f5d367d0606bbd0bf2963dbad6ee4664";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
