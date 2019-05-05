
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-lunar-hector-sensors-description";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/lunar/hector_sensors_description/0.5.0-0.tar.gz;
    sha256 = "0dc4eee872df6cbab513bb4b9198d50e9e104d9e8eba89e67bf3c18f788d055e";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
