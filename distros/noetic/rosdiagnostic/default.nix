
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosdiagnostic";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/rosdiagnostic/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "27a6d0fa649a28aac706855c6adcc866783fe619874de2c966a6bdb3a435b8df";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Command to print aggregated diagnostic contents to the command line";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
