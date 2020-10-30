
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python, pythonPackages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-roscompile";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/roscompile/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "cfe027f1f0b60ff37fc674d1f91eb5de45691ac553d86f558286392766c50e68";
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
