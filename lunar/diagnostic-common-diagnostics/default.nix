
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, rostest, rospy, hddtemp, tf }:
buildRosPackage {
  pname = "ros-lunar-diagnostic-common-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_common_diagnostics/1.9.3-0.tar.gz;
    sha256 = "9dd0b9683a512eae303e18375295714f6037c8fd1d6fb4a7a814527114440fd3";
  };

  buildInputs = [ diagnostic-updater rostest rospy ];
  propagatedBuildInputs = [ diagnostic-updater pythonPackages.psutil rospy hddtemp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    #license = lib.licenses.BSD;
  };
}
