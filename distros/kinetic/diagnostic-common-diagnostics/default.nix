
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, pythonPackages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-common-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_common_diagnostics/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "db632abf2e50a94225e7aec7de6585a92ba2494c4cb5e0459752a581e66e948b";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-updater hddtemp pythonPackages.psutil rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
