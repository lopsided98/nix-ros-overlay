
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-iron-ros-ign-gazebo-demos";
  version = "0.245.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_gazebo_demos/0.245.0-1.tar.gz";
    name = "0.245.0-1.tar.gz";
    sha256 = "93a7dbd25590b02b94f20d872276ea92b060866b7198c4ca8e0ab551522f512a";
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
