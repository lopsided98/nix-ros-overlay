
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "547543d86aafe00698991a8c93e6f1d48fdb5ca3c30471bf0641efead444d92c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
