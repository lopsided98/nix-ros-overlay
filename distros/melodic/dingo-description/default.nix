
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "79b3e3015c6819d91db0000f8ff3877731b111b9245e304fafb69f27bcb034f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
