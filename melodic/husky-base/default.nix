
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, husky-description, sensor-msgs, geometry-msgs, diagnostic-msgs, controller-manager, hardware-interface, catkin, roslint, husky-control, diff-drive-controller, roscpp, topic-tools, husky-msgs, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-husky-base";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_base/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0e3a08f2275b71b5c1136a17d0857857e20df49fc2de2ad5d88cb180801dedd3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs controller-manager hardware-interface roslint roscpp husky-msgs roslaunch diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-aggregator husky-description sensor-msgs diagnostic-msgs geometry-msgs controller-manager hardware-interface husky-control diff-drive-controller roscpp topic-tools husky-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
