
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-husky-description";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_description/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "c5b3c1ad386301b2cafacb5d7c50274ba81432fc9acfb60118a2863b7053f852";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx realsense2-description urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
