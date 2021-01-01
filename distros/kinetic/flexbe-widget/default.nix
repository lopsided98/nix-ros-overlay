
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-widget";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_widget/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "135d2401154c79382d9600982b8840978e50a9f6b6db3444f41d54dbcafc08ba";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
