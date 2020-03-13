
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, eigen-conversions, moveit-core, moveit-ros-planning, pluginlib, roscpp, rostest, rosunit, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "dfd8dbab410bf1a26f89085d3bc843e0bf910ca8c4c97a226f16bce72a6a7f5a";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen ];
  checkInputs = [ code-coverage moveit-ros-planning rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
