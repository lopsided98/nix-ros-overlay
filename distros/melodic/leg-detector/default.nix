
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, dynamic-reconfigure, geometry-msgs, image-geometry, laser-filters, laser-geometry, map-laser, message-filters, people-msgs, people-tracking-filter, roscpp, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-leg-detector";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/leg_detector/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "aaf47802eea191142252e69d7044c0b308fd70350c8fd2650e7c682069e2e9de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bfl dynamic-reconfigure geometry-msgs image-geometry laser-filters laser-geometry map-laser message-filters people-msgs people-tracking-filter roscpp sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
