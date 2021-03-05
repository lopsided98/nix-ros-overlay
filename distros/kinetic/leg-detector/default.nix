
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, dynamic-reconfigure, geometry-msgs, image-geometry, laser-filters, laser-geometry, map-laser, message-filters, people-msgs, people-tracking-filter, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leg-detector";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/leg_detector/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "791c039d2429226a37eff43c3ee352024626491179f8b2f9dd7a68f9e5ab9287";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ bfl dynamic-reconfigure geometry-msgs image-geometry laser-filters laser-geometry map-laser message-filters people-msgs people-tracking-filter roscpp sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
