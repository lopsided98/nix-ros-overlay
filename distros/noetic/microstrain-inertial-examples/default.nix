
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, microstrain-inertial-driver, rviz, rviz-imu-plugin, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "e4b61bd7769fe4b3b1e1f10237ad82276e01584ac086c877053842263c11cce6";
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
