
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-lunar-ros-introspection";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/wu-robotics/roscompile-release/archive/release/lunar/ros_introspection/1.0.1-0.tar.gz;
    sha256 = "50949c535aa61c50668c1f39aa1caafb265651d01dec4bb40c055b419a545a67";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.requests rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
