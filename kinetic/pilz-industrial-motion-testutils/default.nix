
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion-testutils";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion_testutils/0.3.6-0.tar.gz;
    sha256 = "11eda60d34e77a7b334e6fa9dbf61d19c6a8d2c6caaf240802a56fff33363491";
  };

  buildInputs = [ moveit-msgs eigen-conversions pilz-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    #license = lib.licenses.Apache 2.0;
  };
}
