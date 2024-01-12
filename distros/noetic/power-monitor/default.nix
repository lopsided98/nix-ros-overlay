
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, pr2-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-power-monitor";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/power_monitor/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "379ca3049bcd3d48bba2379b85a1b37cdd391196e55adc3d2276656940b9387c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure pr2-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The power_monitor collects messages from the ocean_battery_server and
     the pr2_power_board, and publishes a summary of their data in a
     friendlier message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
