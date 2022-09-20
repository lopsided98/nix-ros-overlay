
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-ros-pytest";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/machinekoder/ros_pytest-release/archive/release/melodic/ros_pytest/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "ba602e2fda979ab6f3097bfdad4c9cc589a7f0781f784cd46a1462de3636dc84";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.pytest rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_pytest package'';
    license = with lib.licenses; [ mit ];
  };
}
