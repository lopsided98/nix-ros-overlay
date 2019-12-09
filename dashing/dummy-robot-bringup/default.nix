
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2run, dummy-sensors, robot-state-publisher, launch, launch-ros, ament-lint-common, ament-cmake, dummy-map-server, ament-cmake-gtest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dummy-robot-bringup";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/dummy_robot_bringup/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "53176b4459f2fd92bbf56d248251ab120f3af45949a9cfbf69d17a6a9a604c54";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ros2run launch robot-state-publisher dummy-sensors launch-ros dummy-map-server ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
