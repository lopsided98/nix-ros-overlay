
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, jq, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "566e9aed61cd9d142928bf23b191fba150bbfbafcbd6ca8ff868b0fb81b723e0";
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
