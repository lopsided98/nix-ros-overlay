
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, dynamic-reconfigure, geometry-msgs, image-geometry, laser-filters, laser-geometry, map-laser, message-filters, people-msgs, people-tracking-filter, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-leg-detector";
  version = "1.4.0-r4";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/leg_detector/1.4.0-4.tar.gz";
    name = "1.4.0-4.tar.gz";
    sha256 = "44076e4c01655df0b855678ab2f2012a6ca559b527b4c258fb382a6df739f07f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ bfl dynamic-reconfigure geometry-msgs image-geometry laser-filters laser-geometry map-laser message-filters people-msgs people-tracking-filter roscpp sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
