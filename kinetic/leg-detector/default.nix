
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, people-msgs, dynamic-reconfigure, map-laser, laser-filters, std-msgs, std-srvs, tf, catkin, laser-geometry, people-tracking-filter, bfl, visualization-msgs, roscpp, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-leg-detector";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/leg_detector/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "4935c2169ea3e899c9d0137c37dcf3d6f9bfb4196c54486cd29f1d90662ab7bd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs people-msgs dynamic-reconfigure std-msgs std-srvs tf laser-geometry people-tracking-filter bfl visualization-msgs roscpp image-geometry ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs people-msgs dynamic-reconfigure map-laser laser-filters std-msgs std-srvs tf laser-geometry people-tracking-filter bfl visualization-msgs roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
