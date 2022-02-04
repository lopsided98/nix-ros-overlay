
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-husky-description";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_description/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "fa2c87c8322939488df03e9e2ebeac17a19f651332a640c4392772b67167a536";
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
