
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, aws-common, aws-ros2-common, launch, launch-ros, lex-common, lex-common-msgs, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-lex-node";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/dashing/lex_node/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a12bb7e17366477733810eab562f7319b3af32824247f04edb4d3aa683ad8cc8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ aws-common aws-ros2-common launch launch-ros lex-common lex-common-msgs python3Packages.pyyaml rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
