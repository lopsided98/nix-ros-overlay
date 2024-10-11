
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-aggregator, diagnostic-updater, eigen, geographiclib, geometry-msgs, git, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, nmea-msgs, roscpp, roslint, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "017e52d7a609791b656f48050648e74dafae59c7281b0c0fc5bad62fe7cb40cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen geographiclib git message-generation roslint ];
  propagatedBuildInputs = [ cmake-modules diagnostic-aggregator diagnostic-updater geometry-msgs message-runtime microstrain-inertial-msgs nav-msgs nmea-msgs roscpp rtcm-msgs sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = "The ros_mscl package provides a driver for the LORD/Microstrain inertial products.";
    license = with lib.licenses; [ mit ];
  };
}
