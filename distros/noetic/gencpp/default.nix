
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gencpp";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/noetic/gencpp/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "898b106c3752b20287c5375a6c3517a53a4d26efbc10f1e2d5f57275ceecb3b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
