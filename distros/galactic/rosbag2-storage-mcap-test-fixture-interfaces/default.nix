
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-storage-mcap-test-fixture-interfaces";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/galactic/rosbag2_storage_mcap_test_fixture_interfaces/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "00661ccce55fb712f5eef686dcbe8ad2572a716febbbb09b5e4f2c51806e2e5a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''message definition test fixtures for MCAP schema recording'';
    license = with lib.licenses; [ asl20 ];
  };
}
