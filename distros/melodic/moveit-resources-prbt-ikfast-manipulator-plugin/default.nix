
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_prbt_ikfast_manipulator_plugin/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "ddc3e93bd54ad9ca426ee618f5b2a4dc2128473a4b16c74d24003c3cfcfc4aae";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen ];
  propagatedBuildInputs = [ eigen-conversions moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
