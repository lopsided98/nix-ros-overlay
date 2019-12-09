
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, pythonPackages, catkin, hddtemp, diagnostic-updater, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-common-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_common_diagnostics/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "e9729593c5e73825e769d670d78ba809db061ffb344132201020eae878c1359c";
  };

  buildType = "catkin";
  buildInputs = [ rospy rostest diagnostic-updater ];
  propagatedBuildInputs = [ tf hddtemp rospy diagnostic-updater pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
