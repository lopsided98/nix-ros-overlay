
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-minimal-subscriber";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_minimal_subscriber/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "ade2413d7ba7b7f850047be47af5ff05133928358eb278d9bc75ce9c8bbd8fe2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
