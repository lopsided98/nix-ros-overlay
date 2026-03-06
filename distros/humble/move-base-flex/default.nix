
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, mbf-simple-nav, mbf-utility }:
buildRosPackage {
  pname = "ros-humble-move-base-flex";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/move_base_flex/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "47efd1426573c35f1baa6cfe1951fbf2d3914b6f50f4643ccb7ea424a7566047";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mbf-abstract-core mbf-abstract-nav mbf-msgs mbf-simple-nav mbf-utility ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Move Base Flex (MBF) is a backwards-compatible replacement for move_base. MBF can use existing plugins for move_base, and provides an enhanced version of the planner, controller and recovery plugin ROS interfaces. It exposes action servers for planning, controlling and recovering, providing detailed information of the current state and the plugin’s feedback. An external executive logic can use MBF and its actions to perform smart and flexible navigation strategies. Furthermore, MBF enables the use of other map representations, e.g. meshes or grid_map
       
       This package is a meta package and refers to the Move Base Flex stack packages.The abstract core of MBF – without any binding to a map representation – is represented by the <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_abstract_nav</a> and the <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_abstract_core</a>. For navigation on costmaps see <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_costmap_nav</a> and <a href=\"http://github.com/naturerobots/move_base_flex\">mbf_costmap_core</a>.";
    license = with lib.licenses; [ bsd3 ];
  };
}
