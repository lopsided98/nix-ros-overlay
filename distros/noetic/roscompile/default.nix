
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python3Packages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-roscompile";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/roscompile/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "675aff42dbbf990ffb8eaa64c4e1edd2bd526e47be2cf36e6138d4b49716b946";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python3Packages.click python3Packages.pyyaml python3Packages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
