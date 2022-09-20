
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-melodic-ros-introspection";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/ros_introspection/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6c9df1bb401d4d3f2f564502df7e1ab10bf7b8e623bfe1aef63c5e7deac5bb55";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.pyyaml pythonPackages.requests pythonPackages.rospkg rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
