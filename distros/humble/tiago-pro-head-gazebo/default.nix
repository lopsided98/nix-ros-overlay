
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-plugins, pal-gazebo-worlds, tiago-pro-head-bringup, tiago-pro-head-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-gazebo";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_head_simulation-release/archive/release/humble/tiago_pro_head_gazebo/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "07aabf8b12c311467b95740fbdb3902e95f3e84f8df98153a45b3820df57e846";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds tiago-pro-head-bringup tiago-pro-head-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_head_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
