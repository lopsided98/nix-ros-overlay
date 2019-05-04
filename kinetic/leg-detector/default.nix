
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, map-laser, people-tracking-filter, people-msgs, tf, sensor-msgs, catkin, message-filters, image-geometry, laser-geometry, laser-filters, visualization-msgs, bfl, std-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leg-detector";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/leg_detector/1.1.2-0.tar.gz;
    sha256 = "8769f7d4a2a346aaff7a8dd0a2ab0c4fcec45f466d8202aa2c9fee3217effbe1";
  };

  buildInputs = [ std-srvs people-tracking-filter people-msgs sensor-msgs bfl message-filters roscpp image-geometry laser-geometry visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs map-laser people-tracking-filter people-msgs sensor-msgs bfl message-filters roscpp image-geometry laser-geometry laser-filters visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
