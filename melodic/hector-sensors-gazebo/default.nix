
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, hector-sensors-description, catkin, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-hector-sensors-gazebo";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_sensors_gazebo/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "f6c2dbc7c925947b911f5fc7065443bd12d24193b7a9168347c560fab1300d09";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins hector-sensors-description gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
