
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-sensor-filters";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ctu-vras/sensor_filters-release/archive/release/melodic/sensor_filters/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d1f055827741d614e075119e14faf90db3e4974e2d04f1dec6c6c1e968b5a334";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple sensor filter chain nodes and nodelets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
