
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-updater";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_updater/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "303c2443b8e3d5e414187368fda5461fa6db22756f40c067c86d0650af79975f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
