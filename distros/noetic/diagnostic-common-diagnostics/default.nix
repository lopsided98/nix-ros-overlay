
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.10.2-3.tar.gz";
    name = "1.10.2-3.tar.gz";
    sha256 = "69984f1654acdb19070d3be3e63ec888c79538de7d9b90c9a6c2529dfaaf2680";
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
