
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, realsense2-description, robotont-description, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-robotont-nuc-description";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_nuc_description-release/archive/release/noetic/robotont_nuc_description/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "843dea77d131d0cf8f306ef92b40bc56f6119688502ad0fd3383b088155fae58";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ realsense2-description robotont-description rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_nuc_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
