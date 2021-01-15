
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python3Packages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-roscompile";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/roscompile/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "5aaff19ee97608913f5479729a4308ac01a66ba87cc093547ccddec007f9dffe";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python3Packages.click python3Packages.pyyaml python3Packages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
