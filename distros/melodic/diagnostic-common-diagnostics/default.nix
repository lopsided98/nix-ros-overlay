
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, pythonPackages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-common-diagnostics";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_common_diagnostics/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "40fa72958c582a7ac95fdcae430f79354d4308c847cdb4c59d1dfd837152c99d";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-updater hddtemp pythonPackages.psutil rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
