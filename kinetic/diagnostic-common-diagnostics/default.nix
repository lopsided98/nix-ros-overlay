
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, rostest, rospy, hddtemp, tf }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-common-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_common_diagnostics/1.9.3-0.tar.gz;
    sha256 = "db632abf2e50a94225e7aec7de6585a92ba2494c4cb5e0459752a581e66e948b";
  };

  buildInputs = [ diagnostic-updater rostest rospy ];
  propagatedBuildInputs = [ pythonPackages.psutil diagnostic-updater rospy hddtemp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
