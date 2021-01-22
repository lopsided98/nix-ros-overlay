
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-updater";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_updater/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "e38e40c4e9eb985bcaf4091ea869678c4a20045460f5489d580b80e414f42869";
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
