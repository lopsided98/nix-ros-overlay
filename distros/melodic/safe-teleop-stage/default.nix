
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, safe-teleop-base, stage }:
buildRosPackage {
  pname = "ros-melodic-safe-teleop-stage";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/melodic/safe_teleop_stage/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "ff18ef24923e712f4647f4e03481d7efeb8cb06910599525e6acb1821a71f374";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy safe-teleop-base stage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo of safe_teleop in stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
