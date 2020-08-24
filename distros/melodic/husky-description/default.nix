
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "c39d978cd02d4a1cc2d5b1abd45dad2529a4cd3dd0ea66026e2e9f1fd3e932cd";
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
