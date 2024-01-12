
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, hector-sensors-description }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-gazebo";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_sensors_gazebo/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "bc0da9a58e2e5cb58449c13458bbe9863b1fbe1eb0a1f34f31c336c5fbb9c186";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins hector-sensors-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
