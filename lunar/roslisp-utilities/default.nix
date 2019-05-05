
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-lunar-roslisp-utilities";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/roslisp_utilities/0.2.10-0.tar.gz;
    sha256 = "fbc59bdc9b999749eca2cefd9725fd789982a2eaa907dde97d5de3252ed52422";
  };

  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
