
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, git, jq, mavros-msgs, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, nmea-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3cdbef3b972346406a888828be02ff2ba735c0671de488abd24e10be6cf3b1eb";
  };

  buildType = "catkin";
  buildInputs = [ catkin curl git jq message-generation roslint ];
  propagatedBuildInputs = [ cmake-modules diagnostic-aggregator diagnostic-updater geometry-msgs mavros-msgs message-runtime microstrain-inertial-msgs nav-msgs nmea-msgs roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = ''The ros_mscl package provides a driver for the LORD/Microstrain inertial products.'';
    license = with lib.licenses; [ mit ];
  };
}
