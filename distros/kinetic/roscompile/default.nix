
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python, pythonPackages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-roscompile";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/roscompile/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "72ea838c434c7af7fb9c2dbca01b019ebf5ed1308b0bacbe7f3d68ef7e73781e";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python pythonPackages.click pythonPackages.pyyaml pythonPackages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
