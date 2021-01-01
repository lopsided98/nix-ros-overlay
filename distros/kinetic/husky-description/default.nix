
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-husky-description";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_description/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "8d901f9755059679e45ea61b71fe7fa3ef5284b0271a07c48b22aeae4cddbe51";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx realsense2-description urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
