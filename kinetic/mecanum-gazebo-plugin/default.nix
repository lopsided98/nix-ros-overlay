
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, gazeboSimulator, roslint }:
buildRosPackage {
  pname = "ros-kinetic-mecanum-gazebo-plugin";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/mecanum_gazebo_plugin/0.0.3-0.tar.gz;
    sha256 = "c19ac0fbf254b7116e2cad8fad565d59d081e03becd9918933181faffc4dea66";
  };

  buildInputs = [ gazeboSimulator.gazebo rosconsole roslint ];
  propagatedBuildInputs = [ gazeboSimulator.gazebo rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin which uses directional friction to simulate mecanum wheels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
