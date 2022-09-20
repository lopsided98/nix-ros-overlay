
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, ethercat-hardware, pr2-controller-manager, realtime-tools, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-pr2-ethercat";
  version = "1.6.31-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/pr2_ethercat/1.6.31-1.tar.gz";
    name = "1.6.31-1.tar.gz";
    sha256 = "3be50304622a7ea7154af500078e617541a8dcccdd7673d45e6cb525bdd5e1d1";
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
