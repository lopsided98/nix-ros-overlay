
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-publisher";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_publisher/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "d205535cc07e286795a5e3db2eabe0b7194c318857927821d228e0a408732d7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal publisher nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
