
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-mcap-testdata";
  version = "0.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_mcap_testdata/0.15.8-1.tar.gz";
    name = "0.15.8-1.tar.gz";
    sha256 = "3505919bce97771f1194563bc7f205d1fe4751a9a55a5f446c8a902fc15ae4c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''message definition test fixtures for MCAP schema recording'';
    license = with lib.licenses; [ asl20 ];
  };
}
