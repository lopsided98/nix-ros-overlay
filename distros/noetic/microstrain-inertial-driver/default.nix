
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, git, jq, mavros-msgs, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, nmea-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "3a549200ab6f72f50f7e658ca1939cc2c6a4659d3393be15f511e8f357904d69";
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
