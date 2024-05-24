
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, microstrain-inertial-driver, rviz, rviz-imu-plugin, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "535bd08b6f197ac91272727a7d1d50aea6c33e6e3bc7bf396bdb6e239a5489e7";
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
