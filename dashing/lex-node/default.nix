
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common-msgs, aws-ros2-common, ament-cmake, ament-lint-common, lex-common, ament-cmake-gmock, launch-ros, launch, aws-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-lex-node";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/dashing/lex_node/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "0d48910f8604820e7f5b30439e309979720905f5be4fd1989330092de510310b";
  };

  buildType = "ament_cmake";
  buildInputs = [ lex-common-msgs aws-ros2-common lex-common aws-common rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ament-cmake-gmock ];
  propagatedBuildInputs = [ lex-common-msgs aws-ros2-common launch-ros lex-common launch aws-common rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
