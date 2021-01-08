
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, hector-sensors-description }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-gazebo";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_sensors_gazebo/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "226838ff33a7b1e7f0f0495deaea78766605714b8abb65bb2344db560cff832e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins hector-sensors-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
