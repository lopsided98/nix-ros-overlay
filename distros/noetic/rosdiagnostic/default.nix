
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosdiagnostic";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/rosdiagnostic/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "f079ce9e420b1bd2e4af2e87383a5aabd8d7000c06ea3901008fae5c5bac052a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
