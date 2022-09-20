
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-hector-sensors-description";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/melodic/hector_sensors_description/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "622a110133e72bcaaffeb45ed9eed1fd4f7f24eaabebd9e52442dc7c81d194f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
