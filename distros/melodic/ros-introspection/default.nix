
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-melodic-ros-introspection";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/ros_introspection/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "6f75ce2caaf7ffc9c947a88644363a82ff8a6cd5be4f3abb933d073e8995daf1";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.pyyaml pythonPackages.requests pythonPackages.rospkg rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
