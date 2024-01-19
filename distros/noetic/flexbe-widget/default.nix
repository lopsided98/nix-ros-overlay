
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-widget";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_widget/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "22c8f64421094b5479cc0cf0f71e5a894096215f4f610ccf31836ea5fd613544";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
