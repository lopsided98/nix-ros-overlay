
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, rostest, rospy, hddtemp, tf }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-common-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_common_diagnostics/1.9.3-0.tar.gz;
    sha256 = "e9729593c5e73825e769d670d78ba809db061ffb344132201020eae878c1359c";
  };

  buildInputs = [ diagnostic-updater rostest rospy ];
  propagatedBuildInputs = [ pythonPackages.psutil diagnostic-updater rospy hddtemp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
