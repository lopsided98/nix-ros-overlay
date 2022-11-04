
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, realsense2-description, robotont-description, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-nuc-description";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_nuc_description-release/archive/release/melodic/robotont_nuc_description/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "42cf0d4084d5f9ca70c91321e9cfb723d6dd0659c8b313d8c6f3c676382f08d6";
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
