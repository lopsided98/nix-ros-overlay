
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-ros-pytest";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/machinekoder/ros_pytest-release/archive/release/noetic/ros_pytest/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3a2e581bb9e205709f0613e58d93c6b0400f29e2359f058e81d1f18be5e5f643";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.pytestcov pythonPackages.pytest rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_pytest package'';
    license = with lib.licenses; [ mit ];
  };
}
