
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python, pythonPackages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-roscompile";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/roscompile/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5190d9d7076199ca1afabdd6872276d14e9bd2b41d7c2aaef33e98a2bb4db047";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python pythonPackages.click pythonPackages.pyyaml pythonPackages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
