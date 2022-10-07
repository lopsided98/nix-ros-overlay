
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-storage-mcap-test-fixture-interfaces";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/foxy/rosbag2_storage_mcap_test_fixture_interfaces/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "945e635ed03f64f4b52e1b27fe8fbdb3f44bbf09831de85706367f5c2056881e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''message definition test fixtures for MCAP schema recording'';
    license = with lib.licenses; [ asl20 ];
  };
}
