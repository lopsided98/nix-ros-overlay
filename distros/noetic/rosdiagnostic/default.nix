
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosdiagnostic";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/rosdiagnostic/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "ceb8d907e7841abd95c14e9acba0e253f813187acc3d64e00c3ec821de008f8a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
