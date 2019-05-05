
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-gazebo-plugins, pr2-gazebo, catkin, pr2-controller-configuration-gazebo }:
buildRosPackage {
  pname = "ros-lunar-pr2-simulator";
  version = "2.0.13-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/pr2_simulator/2.0.13-1.tar.gz;
    sha256 = "63db2f599c95953f89f69d2fbeaab816af9f04f05ad4a72e6e55e89bddefe642";
  };

  propagatedBuildInputs = [ pr2-gazebo-plugins pr2-gazebo pr2-controller-configuration-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_simulator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
