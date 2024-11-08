
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, microstrain-inertial-driver, rviz, rviz-imu-plugin, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "b792aff77e900a6cfc96c1303226900650fc3175571404a80bcbef85f504ee24";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ microstrain-inertial-driver rviz rviz-imu-plugin tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Simple examples using the microstrain_inertial_driver for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
