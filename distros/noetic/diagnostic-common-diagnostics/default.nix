
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "3dcdc4feaa3efa9bb0177403f9660671442a1fc1c96c98efb36e1739581823a7";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-updater hddtemp python3Packages.psutil rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
