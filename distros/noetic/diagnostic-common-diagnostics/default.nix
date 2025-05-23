
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, lm_sensors, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "06ea96acc1c88c7170227327401458c13b8d922dd78abedf855755bcc711448e";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-updater hddtemp lm_sensors python3Packages.psutil rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "diagnostic_common_diagnostics";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
