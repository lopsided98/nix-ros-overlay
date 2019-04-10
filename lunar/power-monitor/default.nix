
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, std-msgs, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-power-monitor";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/lunar/power_monitor/1.1.7-0.tar.gz;
    sha256 = "40e89fea6c486fac1db0058fee3cb32e21119ff97429b8437fe8a7a904bf8ae0";
  };

  buildInputs = [ std-msgs pr2-msgs roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ std-msgs pr2-msgs roscpp dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The power_monitor collects messages from the ocean_battery_server and
     the pr2_power_board, and publishes a summary of their data in a
     friendlier message format.'';
    #license = lib.licenses.BSD;
  };
}
