
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosdiagnostic";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/rosdiagnostic/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "104e774af49ccba194e71968bdcaaedad67b263325de18216db9b03b35c98b97";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
