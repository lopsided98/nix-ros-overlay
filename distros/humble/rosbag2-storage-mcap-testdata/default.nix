
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-mcap-testdata";
  version = "0.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_mcap_testdata/0.15.6-1.tar.gz";
    name = "0.15.6-1.tar.gz";
    sha256 = "886c6d7b50c086184c818602c1828c92f2ad7a0d1b1afa5bda33828cb8e5bcfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''message definition test fixtures for MCAP schema recording'';
    license = with lib.licenses; [ asl20 ];
  };
}
