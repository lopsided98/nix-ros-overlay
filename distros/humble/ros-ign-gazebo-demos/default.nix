
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo-demos";
  version = "0.244.16-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo_demos/0.244.16-2.tar.gz";
    name = "0.244.16-2.tar.gz";
    sha256 = "66da0dbbd0af49cd0c38aabf2e635f414b4996268893cf7f258622ebd7983437";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim package to redirect to ros_gz_sim_demos.";
    license = with lib.licenses; [ asl20 ];
  };
}
