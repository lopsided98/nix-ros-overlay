
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.10.4-1.tar.gz";
    name = "1.10.4-1.tar.gz";
    sha256 = "280b746bb7e33a69b388fe26e7ab411052f263243dbe5da71f7b0a023f743ea6";
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
