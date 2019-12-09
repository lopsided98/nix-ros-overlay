
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, std-msgs, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-updater";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_updater/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "ac92aa1fb7cdc84515b51ee6c8bb677e5557c00f557a54425af282eb89ffd52b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs diagnostic-msgs rostest roscpp ];
  propagatedBuildInputs = [ std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
