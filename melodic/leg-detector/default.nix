
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, map-laser, people-tracking-filter, people-msgs, tf, sensor-msgs, catkin, message-filters, image-geometry, laser-geometry, laser-filters, visualization-msgs, bfl, std-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-leg-detector";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/leg_detector/1.1.2-0.tar.gz;
    sha256 = "e1865c4b5c768ff408d3d1cb531bf26dd6acac28f2a7ad5d25fe11cf6ed85bb8";
  };

  buildInputs = [ std-srvs people-tracking-filter people-msgs sensor-msgs bfl message-filters roscpp image-geometry laser-geometry visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs map-laser people-tracking-filter people-msgs sensor-msgs bfl message-filters roscpp image-geometry laser-geometry laser-filters visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
