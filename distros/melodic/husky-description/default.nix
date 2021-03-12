
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "b4dd2796cab46a9cd3c9bb22bbc59bb38292fca8ec90533862e584ba3cb8d719";
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
