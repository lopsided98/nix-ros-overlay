
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-canopen-fake-slaves";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_fake_slaves/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "037998e7a91ca219a06fd14ad458455b781a54f6822a90917b6ddd0042c91f72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ lely-core-libraries lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package with mock canopen slave";
    license = with lib.licenses; [ asl20 ];
  };
}
