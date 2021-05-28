
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "2923afb18b143779f1c2ffdd59b3dbdd31e8bd5c8bc57290bb182a44ebdc3db0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
