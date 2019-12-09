
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common, python3Packages, aws-ros2-common, launch, lex-common-msgs, launch-ros, ament-lint-common, ament-cmake, ament-cmake-gmock, rclcpp, aws-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-lex-node";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/dashing/lex_node/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a12bb7e17366477733810eab562f7319b3af32824247f04edb4d3aa683ad8cc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ lex-common aws-ros2-common rclcpp aws-common lex-common-msgs ];
  checkInputs = [ ament-cmake-gmock ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ python3Packages.pyyaml lex-common aws-ros2-common rclcpp launch launch-ros aws-common lex-common-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
