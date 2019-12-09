
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pr2-msgs, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-power-monitor";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/power_monitor/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "f77e8657675508e110c8e9d34d404a6f786b46fb91ccbec84ca6b8e2cd7ff444";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs pr2-msgs roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs pr2-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The power_monitor collects messages from the ocean_battery_server and
     the pr2_power_board, and publishes a summary of their data in a
     friendlier message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
