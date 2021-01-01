
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-tools";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_tools/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "ea45a3c7997c82e2bfa8e5f149bc597c914d45dff8343369051bf3d366c5ca17";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
