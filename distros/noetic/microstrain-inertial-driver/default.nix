
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, jq, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "b8b2de615ef0a733ff497b3e51a8ec8224273bd052a4ce4a60e3f7a742077f7e";
  };

  buildType = "catkin";
  buildInputs = [ curl jq message-generation roslint ];
  propagatedBuildInputs = [ cmake-modules diagnostic-aggregator diagnostic-updater geometry-msgs message-runtime microstrain-inertial-msgs nav-msgs roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_mscl package provides a driver for the LORD/Microstrain inertial products.'';
    license = with lib.licenses; [ mit ];
  };
}
