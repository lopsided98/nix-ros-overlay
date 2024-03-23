
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, atf-msgs, catkin, python3Packages, rospy, tf, tf2-py, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-atf-metrics";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_metrics/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9a88757b1faab40bda4b04d434e81b6573e37cb1d35a095f70db0563e2afa076";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ atf-msgs rospy tf tf2-py tf2-ros ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Metrics for the ATF.";
    license = with lib.licenses; [ asl20 ];
  };
}
