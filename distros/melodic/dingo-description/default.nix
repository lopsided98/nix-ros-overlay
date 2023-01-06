
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.12-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.12-2.tar.gz";
    name = "0.1.12-2.tar.gz";
    sha256 = "a48c399b727160f21224a5ae85179322ebfe515cd6001b9713467e028b769682";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
