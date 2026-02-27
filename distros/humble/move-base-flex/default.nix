
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, mbf-simple-nav, mbf-utility }:
buildRosPackage {
  pname = "ros-humble-move-base-flex";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/move_base_flex/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "b4d776ff7de7b5b2b5d16d8f7ac11247931af80ae1bee950098f59afad8b8df6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ mbf-abstract-core mbf-abstract-nav mbf-msgs mbf-simple-nav mbf-utility ];

  meta = {
    description = "Move Base Flex (MBF) is a backwards-compatible replacement for move_base. MBF can use existing plugins for move_base, and provides an enhanced version of the planner, controller and recovery plugin ROS interfaces. It exposes action servers for planning, controlling and recovering, providing detailed information of the current state and the plugin’s feedback. An external executive logic can use MBF and its actions to perform smart and flexible navigation strategies. Furthermore, MBF enables the use of other map representations, e.g. meshes or grid_map
       
       This package is a meta package and refers to the Move Base Flex stack packages.The abstract core of MBF – without any binding to a map representation – is represented by the <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_abstract_nav</a> and the <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_abstract_core</a>. For navigation on costmaps see <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_costmap_nav</a> and <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_costmap_core</a>.";
    license = with lib.licenses; [ bsd3 ];
  };
}
