
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, stage, safe-teleop-base, joy }:
buildRosPackage {
  pname = "ros-kinetic-safe-teleop-stage";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/kinetic/safe_teleop_stage/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "61902ee607a1d1a078a41dd75b371142cdf2dcd8070ae1466197857fc8ef4686";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy stage safe-teleop-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo of safe_teleop in stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
