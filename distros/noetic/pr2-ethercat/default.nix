
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, ethercat-hardware, pr2-controller-manager, realtime-tools, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-pr2-ethercat";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_ethercat/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "2112a2d2a0e6863abcb6bfaa32d46569e959c2530dc6731e05dd0970471de71b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater ethercat-hardware pr2-controller-manager realtime-tools roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Main loop that runs the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
