
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "db95f4a3635bae742945ef72b748e64ec724f43e10fa009f8cb7da4e782b09af";
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
