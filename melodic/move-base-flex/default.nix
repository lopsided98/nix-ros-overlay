
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mbf-simple-nav, mbf-abstract-nav, catkin, mbf-abstract-core, mbf-costmap-core, mbf-costmap-nav, mbf-msgs }:
buildRosPackage {
  pname = "ros-melodic-move-base-flex";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/move_base_flex/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "69c419020bc835705d5f93b2a1f12cd151577b12d4bbd0bccdbce7e47e29e061";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-simple-nav mbf-abstract-nav mbf-abstract-core mbf-costmap-nav mbf-costmap-core mbf-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move Base Flex (MBF) is a backwards-compatible replacement for move_base. MBF can use existing plugins for move_base, and provides an enhanced version of the planner, controller and recovery plugin ROS interfaces. It exposes action servers for planning, controlling and recovering, providing detailed information of the current state and the plugin’s feedback. An external executive logic can use MBF and its actions to perform smart and flexible navigation strategies. Furthermore, MBF enables the use of other map representations, e.g. meshes or grid_map
       
       This package is a meta package and refers to the Move Base Flex stack packages.The abstract core of MBF – without any binding to a map representation – is represented by the <a href="http://wiki.ros.org/mbf_abstract_nav">mbf_abstract_nav</a> and the <a href="http://wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>. For navigation on costmaps see <a href="http://wiki.ros.org/mbf_costmap_nav">mbf_costmap_nav</a> and <a href="http://wiki.ros.org/mbf_costmap_core">mbf_costmap_core</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
