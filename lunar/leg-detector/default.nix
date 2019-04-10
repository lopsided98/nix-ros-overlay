
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, map-laser, people-tracking-filter, people-msgs, sensor-msgs, catkin, message-filters, roscpp, image-geometry, laser-geometry, laser-filters, visualization-msgs, bfl, std-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-leg-detector";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/leg_detector/1.1.2-1.tar.gz;
    sha256 = "56a89d7429f4a64d4f545be1870a075ec4647d4b1a0642b27274cf5a6a0513c9";
  };

  buildInputs = [ std-srvs people-msgs tf sensor-msgs bfl message-filters roscpp image-geometry laser-geometry visualization-msgs dynamic-reconfigure std-msgs people-tracking-filter geometry-msgs ];
  propagatedBuildInputs = [ std-srvs map-laser people-tracking-filter people-msgs tf sensor-msgs bfl message-filters roscpp image-geometry laser-geometry laser-filters dynamic-reconfigure std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    #license = lib.licenses.BSD;
  };
}
