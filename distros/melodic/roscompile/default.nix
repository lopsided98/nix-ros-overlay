
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python, pythonPackages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-roscompile";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/roscompile/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c5f8fb99e38f6cbe0002f5d07d153fbc11baf8d8e29cf1f46b57bc345ccbfc16";
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
