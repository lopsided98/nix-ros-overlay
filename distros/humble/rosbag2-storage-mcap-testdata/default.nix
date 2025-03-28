
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-mcap-testdata";
  version = "0.15.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_mcap_testdata/0.15.14-1.tar.gz";
    name = "0.15.14-1.tar.gz";
    sha256 = "b4808addf0c6f7067ee954dd97addb5a99c333717038ecc3a009da6847c6b0d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "message definition test fixtures for MCAP schema recording";
    license = with lib.licenses; [ asl20 ];
  };
}
