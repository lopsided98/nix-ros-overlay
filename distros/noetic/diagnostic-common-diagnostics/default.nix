
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, hddtemp, lm_sensors, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-common-diagnostics";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_common_diagnostics/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "de4cad66e278b9be6736a81ae202d16515a5094989ee4b870dfdc1ad9624bc8e";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-updater hddtemp lm_sensors python3Packages.psutil rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
