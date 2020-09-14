
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-updater";
  version = "1.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_updater/1.10.2-3.tar.gz";
    name = "1.10.2-3.tar.gz";
    sha256 = "254eeaf9627e917ed6acbf1d7b26a64e8911564d92ae07a6d7d8b7765b5201fb";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
