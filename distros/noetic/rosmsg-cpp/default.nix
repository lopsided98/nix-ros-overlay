
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, geometry-msgs, message-runtime, python3, ros-environment, roslib, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosmsg-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ctu-vras/rosmsg_cpp-release/archive/release/noetic/rosmsg_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "55cade697aaddad90380206c883b2a95813bc662810a4adf8ee69c94af140868";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ geometry-msgs rosunit ];
  propagatedBuildInputs = [ cpp-common message-runtime python3 roslib ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''C++ library for getting full message definition or MD5 sum given message type as string'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
