
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-hector-sensors-description";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/kinetic/hector_sensors_description/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "886ab3df8eeaa50660f63f35527af8632e3d3c019e0ecedf885598c4bccd67b2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
