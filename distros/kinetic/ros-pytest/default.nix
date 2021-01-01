
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-ros-pytest";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/machinekoder/ros_pytest-release/archive/release/kinetic/ros_pytest/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "6c298f97196fac9a56f4b972937315f9e59cd46dbc37a521efcac4e740e47d2b";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.pytest rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_pytest package'';
    license = with lib.licenses; [ mit ];
  };
}
