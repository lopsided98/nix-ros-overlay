
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosdiagnostic";
  version = "1.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/rosdiagnostic/1.9.5-1.tar.gz";
    name = "1.9.5-1.tar.gz";
    sha256 = "5734993b4a0922b9a7c9bc538d9c4797c4956696f3d6db170cf6b7e60dcba70c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
