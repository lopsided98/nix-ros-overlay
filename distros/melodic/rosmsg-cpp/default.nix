
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, geometry-msgs, message-runtime, python, pythonPackages, ros-environment, roslib, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rosmsg-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ctu-vras/rosmsg_cpp-release/archive/release/melodic/rosmsg_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0e6da8054fc8e85204a8c0a58a68e516a18d994bfe94ae19748a791586a5d834";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.python ros-environment ];
  checkInputs = [ geometry-msgs rosunit ];
  propagatedBuildInputs = [ cpp-common message-runtime python roslib ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''C++ library for getting full message definition or MD5 sum given message type as string'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
