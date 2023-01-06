
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo-demos";
  version = "0.244.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo_demos/0.244.9-1.tar.gz";
    name = "0.244.9-1.tar.gz";
    sha256 = "89a1de4beee7da6ef1128f778b16aa4ba1c463a0e6c59cf2ea9d64cedd022318";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Shim package to redirect to ros_gz_sim_demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
