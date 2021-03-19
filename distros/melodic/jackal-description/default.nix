
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-description";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_description/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "feedd3e11505db8b62c46c3dffa7c0dac1f51084e03ac177faaa2a70d44ac8d1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx pointgrey-camera-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
