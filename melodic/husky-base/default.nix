
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, husky-msgs, roslint, diff-drive-controller, sensor-msgs, catkin, topic-tools, diagnostic-updater, husky-description, diagnostic-msgs, roslaunch, roscpp, husky-control, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-husky-base";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_base/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0e3a08f2275b71b5c1136a17d0857857e20df49fc2de2ad5d88cb180801dedd3";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager hardware-interface husky-msgs roslint sensor-msgs diagnostic-updater diagnostic-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ controller-manager hardware-interface husky-msgs diff-drive-controller sensor-msgs diagnostic-updater husky-description topic-tools diagnostic-msgs roscpp husky-control geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
