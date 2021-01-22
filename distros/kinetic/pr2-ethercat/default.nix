
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, ethercat-hardware, pr2-controller-manager, realtime-tools, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-ethercat";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_ethercat/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "771ca836cc90bcb9b2228222bdcce39b97556db914d27f36916596fee36d6d91";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater ethercat-hardware pr2-controller-manager realtime-tools roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Main loop that runs the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
