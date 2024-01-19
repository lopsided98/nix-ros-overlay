
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roscpp, rospy, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-client";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/tf2_client/-/archive/release/noetic/tf2_client/1.0.0-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "182a126090058dd3d2051211e2ef82750379480bbfa83c7b3561b50f85e10219";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ roscpp rospy tf2 tf2-ros ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Configurable tf2 client wrapper using local or remote buffer.'';
    license = with lib.licenses; [ mit ];
  };
}
