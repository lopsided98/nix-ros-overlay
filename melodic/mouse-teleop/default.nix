
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-mouse-teleop";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/mouse_teleop/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "ccf8af493ba91d2a7dee432444454286025cc9bafb30105a1e5ec46ab744cb05";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
