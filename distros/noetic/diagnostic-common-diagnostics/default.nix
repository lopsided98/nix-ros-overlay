
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "dc83ad5c9f5988f8227a1bbc4c8109edec81c4fc9477031fd86bc6fb2ee97e3e";
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
