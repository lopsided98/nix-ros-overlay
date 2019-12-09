
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, std-srvs, catkin, ethercat-hardware, realtime-tools, roscpp, pr2-controller-manager, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-pr2-ethercat";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_ethercat/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "771ca836cc90bcb9b2228222bdcce39b97556db914d27f36916596fee36d6d91";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs std-srvs roscpp ethercat-hardware realtime-tools diagnostic-updater pr2-controller-manager ];
  propagatedBuildInputs = [ diagnostic-msgs std-srvs roscpp ethercat-hardware realtime-tools diagnostic-updater pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Main loop that runs the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
