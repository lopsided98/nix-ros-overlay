
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-sensors-description, hector-gazebo-plugins, catkin, gazebo-plugins }:
buildRosPackage {
  pname = "ros-lunar-hector-sensors-gazebo";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/hector_sensors_gazebo/0.5.1-0.tar.gz;
    sha256 = "87de1e4e9019b038a4f619cbf0e0d506c6535ea23570f6d69ae93ffc4a1cffb5";
  };

  propagatedBuildInputs = [ hector-sensors-description hector-gazebo-plugins gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    #license = lib.licenses.BSD;
  };
}
